.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rax, rbx
jmp .bb_0.1
.bb_0.1:
and dl, cl
or edx, 13
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 40
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
lea rax, qword ptr [rdx]
jmp .bb_0.4
.bb_0.4:
xor al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
