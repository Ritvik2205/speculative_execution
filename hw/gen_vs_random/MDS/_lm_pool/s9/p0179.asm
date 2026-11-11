.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
xor al, 34
jmp .bb_0.1
.bb_0.1:
test cl, -123
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and cl, bl
jmp .bb_0.2
.bb_0.2:
and dl, -73
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
xor al, cl
and rax, -1701787862
or ax, -7150
and rax, 1886208862
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
xor rdi, -9
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
