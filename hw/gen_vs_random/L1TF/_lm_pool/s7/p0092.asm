.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
xor sil, 64
test eax, 899472326
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 24
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
xor ebx, -81
adc si, 40
xor esi, 92
bt ecx, esi
jmp .bb_0.1
.bb_0.1:
cmp cx, 42
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
