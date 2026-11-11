.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
lea bx, qword ptr [rcx]
test dl, bl
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
test al, -84
and sil, cl
and cl, dil
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 5
add bl, sil
xor dil, bl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmovle rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
