.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 85
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 65
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and cl, cl
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 43
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
or dl, 41
cmp dil, -78
add eax, 1518653812
test rcx, -1420345926
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
cmovnbe eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
