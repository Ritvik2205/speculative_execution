.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 43
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
sub dl, -34
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc di, 64
and rsi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
sub dl, cl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 90
lea di, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
