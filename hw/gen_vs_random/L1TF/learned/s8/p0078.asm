.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
xor rdi, -80
add dl, bl
cmovs cx, di
or al, -5
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
test edx, 1891691791
sub cl, -49
and dl, bl
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
