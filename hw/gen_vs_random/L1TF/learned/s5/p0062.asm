.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
sub al, -97
lea rbx, qword ptr [rdi + rcx + 44]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 13
jmp .bb_0.2
.bb_0.2:
test al, -70
jns .bb_0.3
jmp .exit_0
.bb_0.3:
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
