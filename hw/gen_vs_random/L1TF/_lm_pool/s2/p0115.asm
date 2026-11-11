.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, -109
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
