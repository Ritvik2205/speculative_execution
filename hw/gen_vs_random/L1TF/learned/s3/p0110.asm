.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
and cx, -79
test dl, bl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
add bl, 68
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 78
sub cl, al
xchg eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
