.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 184
or al, cl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
btc bx, 58
jmp .bb_0.1
.bb_0.1:
xor ax, -16696
xor bl, dil
or al, 30
and bl, bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 6
xor al, dil
and dl, cl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
