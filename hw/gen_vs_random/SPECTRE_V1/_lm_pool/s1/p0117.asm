.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ecx, esi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 9
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
lea ebx, qword ptr [rdx + rsi + 96]
and dl, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, al
add bl, dl
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
add al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
