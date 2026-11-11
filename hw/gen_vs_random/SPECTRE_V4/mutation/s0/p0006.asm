.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz si, si
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
mov al, bl
or rax, 1042095162
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmovl rsi, rdi
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
xor al, 118
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or cl, -33
mov dl, al
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
movzx di, sil
test eax, -651442446
cmovnle rax, rdi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
btc ebx, edi
test rax, rbx
test ax, 21107
adc rax, 2071185388
xor rax, rbx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
bts rbx, rcx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
add ax, 10655
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
cmovz bx, cx
bt cx, si
adc dl, al
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
add ebx, -57
movzx di, dil
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
inc edx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
movsx rsi, bl
test edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
