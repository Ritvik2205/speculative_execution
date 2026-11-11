.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, ax
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor rcx, -2
btc eax, 40
xor cl, 98
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
xor si, 80
test dl, sil
test rdx, 90
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
