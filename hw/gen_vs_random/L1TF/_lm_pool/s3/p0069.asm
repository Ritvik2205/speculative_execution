.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and al, -68
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
sub cl, -49
jmp .bb_0.2
.bb_0.2:
cmp bx, 90
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
sub al, cl
adc al, -6
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
