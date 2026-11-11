.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
test ax, -14473
cmovnz si, si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
test edx, ebx
xor rax, rbx
or rax, -943474997
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
xor al, -31
adc dl, al
movzx di, sil
add ax, 6694
inc edx
test eax, -251558852
btc ebx, edi
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
mov al, bl
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
add ebx, -57
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
movsx rsi, bl
adc rax, 519150753
mov dl, al
bt cx, si
test rax, rbx
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
bts rbx, rcx
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cl, -33
movzx di, dil
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
cmovnle rax, rdi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmovz bx, cx
cmovl rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
