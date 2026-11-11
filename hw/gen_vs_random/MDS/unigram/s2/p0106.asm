.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, rbx
and dl, 48 # instrumentation
cmovz rdx, rdi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 48
and bl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
test cx, 401
xor edi, edi
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
xor al, -19
or al, 16
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
or sil, -49
cmovz rax, rcx
xor al, 9
cmovbe edx, esi
test rsi, 48
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
or al, -22
xor bx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
