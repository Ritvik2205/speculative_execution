.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -88
lea eax, qword ptr [rdi]
or dl, dil
test al, -56
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and sil, 37
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
add bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
