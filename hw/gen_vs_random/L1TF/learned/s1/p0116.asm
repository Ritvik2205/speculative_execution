.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, bx
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
xor dl, 64
adc al, 80
cmp ax, 24210
jmp .bb_0.1
.bb_0.1:
cmovnle eax, ebx
cmp cl, bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
