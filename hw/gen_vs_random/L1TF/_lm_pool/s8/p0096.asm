.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -104
or al, -2
and sil, cl
inc al
cmovnle rsi, rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
xor bl, dl
inc sil
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
