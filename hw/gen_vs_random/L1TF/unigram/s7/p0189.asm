.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ecx
add bl, -52 # instrumentation
not ecx
setb dl
and ebx, -52
sbb dx, bx
add cl, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
cmovns eax, ebx
sub ecx, 77
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
cmp cl, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
