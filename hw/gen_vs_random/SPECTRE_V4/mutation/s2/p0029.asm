.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
movsx rsi, bl
adc dl, al
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
movzx di, sil
adc rax, 1690546225
test edx, ebx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
mov al, bl
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
movzx di, dil
add ebx, -57
or rax, -387680856
bts rbx, rcx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
add ax, -9762
test rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
cmovnle rax, rdi
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
xor rax, rbx
btc ebx, edi
inc edx
mov dl, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
bt cx, si
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
cmovz bx, cx
cmovnz si, si
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
test eax, -251558852
xor al, -60
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
cmovl rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
test ax, -6841
and rax, 0b1111111111111 # instrumentation
or cl, -33
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
