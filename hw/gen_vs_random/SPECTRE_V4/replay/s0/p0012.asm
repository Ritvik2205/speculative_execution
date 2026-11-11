.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -113
test rax, rbx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
or rax, -943474997
movzx di, sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
add ebx, -57
test edx, ebx
adc dl, al
add ax, 17333
cmovz bx, cx
movsx rsi, bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
cmovnz si, si
xor rax, rbx
and rax, 0b1111111111111 # instrumentation
or cl, -33
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovnle rax, rdi
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
adc rax, 253624080
inc edx
mov dl, al
cmovl rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
btc ebx, edi
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
test eax, 1600638830
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
test ax, -6584
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
movzx di, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
mov al, bl
bts rbx, rcx
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
bt cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
