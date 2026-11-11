.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
xor dil, -3
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor eax, 2063216578
jmp .bb_0.2
.bb_0.2:
and dl, cl
or rax, -1561934807
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
bt dx, bx
and rax, 452940266
xor bl, -27
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
