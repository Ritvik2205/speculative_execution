.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor cx, -18
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or ecx, edi
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
xor rcx, -2
test eax, 1838539683
test bl, sil
test bl, 65
btc edi, 230
xor sil, 94
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
btc si, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
