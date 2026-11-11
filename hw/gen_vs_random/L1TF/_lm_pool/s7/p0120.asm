.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
and rsi, 52
xor dl, 19
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, dil
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
xor rdi, rbx
jmp .bb_0.3
.bb_0.3:
lea di, qword ptr [rdi]
test si, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
