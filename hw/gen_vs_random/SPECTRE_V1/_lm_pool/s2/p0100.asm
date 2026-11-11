.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
test al, 34
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
cmp esi, 87
test dl, -7
add eax, -1174744897
jle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
