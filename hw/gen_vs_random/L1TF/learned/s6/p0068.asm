.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 21 # instrumentation
adc di, 33
lea ax, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 53
sbb sil, 19
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xor al, bl
btc cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
