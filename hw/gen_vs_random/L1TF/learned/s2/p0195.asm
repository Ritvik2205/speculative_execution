.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and al, -68
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rbx]
xor al, cl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
