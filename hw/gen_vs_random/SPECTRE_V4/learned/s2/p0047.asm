.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
adc cl, 31
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
xor di, 38
add sil, bl
adc bl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
mov bl, dl
sub al, 69
test rax, -1395313845
test dil, -58
and cl, -128
xor dil, -23
adc cl, dl
sub rax, 1914398062
sub al, dil
add dl, -82
test esi, -222751961
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
