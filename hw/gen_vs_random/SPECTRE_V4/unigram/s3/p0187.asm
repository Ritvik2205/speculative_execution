.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
imul rbx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
xor sil, 56
adc cl, 43
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
mov al, 48
cmovnl rdi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
imul rbx, rcx, 71
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
mul rbx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 39
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 10
test sil, 26
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
imul rbx, rax
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
sub cl, 116
cmovle bx, ax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 74
dec rax
cmp al, -23
add ecx, 83
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 23
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
add cl, -21 # instrumentation
adc rcx, 22
cmp cl, cl
adc dl, dil
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
add dl, 41
and rdx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
xor bl, 93
test rax, -344032571
sub cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
