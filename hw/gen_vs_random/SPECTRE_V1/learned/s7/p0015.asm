.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
sub al, bl
xchg rsi, rax
mov dl, sil
xor al, dl
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
