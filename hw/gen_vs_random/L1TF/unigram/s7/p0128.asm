.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
test edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
cmovs edi, esi
add cl, -20
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 46
add dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
add dl, -78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
setb al
sub rax, rdx
btr ebx, 30
cmovz bx, ax
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
