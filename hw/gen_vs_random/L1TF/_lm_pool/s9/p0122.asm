.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
add rax, 909978580
jmp .bb_0.1
.bb_0.1:
setb al
not dl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
sub cl, -49
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
sbb dil, bl
test dil, -126
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
