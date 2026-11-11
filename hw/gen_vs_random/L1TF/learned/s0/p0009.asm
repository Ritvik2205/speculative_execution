.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rcx]
lea bx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
cmp al, bl
and ecx, 6
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
lea rcx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
