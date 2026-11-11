.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 73
add ebx, esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], eax
mov rsi, rcx
or dl, bl
inc edi
or al, 95
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
cmp ecx, 83
sub bl, 17
cmovnle eax, esi
test cx, dx
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
add edx, 57
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
imul ax, di
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
add dil, 56 # instrumentation
cmovle rsi, rdi
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
adc cl, 65
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
sub dl, dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb ax, dx
movsx ecx, si
bt eax, ebx
cmovnp dx, cx
adc eax, -1513455903
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
imul ecx, esi
test rbx, 93
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 97
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmovnb ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
