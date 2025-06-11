function loadenv
    if test -f "$argv[1]"
        for line in (grep -v '^#' "$argv[1]")
            set -l key (echo $line | cut -d= -f1)
            set -l value (echo $line | cut -d= -f2- | sed -e 's/^["'\'']//;s/["'\'']$//')
            set -xg $key $value
        end
    else
        echo "loadenv Error: File '$argv[1]' not found"
    end
end

