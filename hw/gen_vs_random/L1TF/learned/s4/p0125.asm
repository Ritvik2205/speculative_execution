.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
add sil, -5 # instrumentation
adc dl, sil
jmp .bb_0.2
.bb_0.2:
adc dil, 120
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb rsi, 34
test al, -82
or al, -48
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 69
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
sbb bl, dil
add bl, sil
xor dl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
