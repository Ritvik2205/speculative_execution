.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
btc esi, 74
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
cmovnbe bx, di
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
setns sil
add cl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
cmovnle cx, di
add al, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
movsx rdx, cx
imul al
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
