.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
lea rax, qword ptr [rcx]
adc dl, 107
add dil, dl
sub al, bl
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
sbb cl, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rcx + rsi + 22]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
sub bl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
