.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 70
or dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
jno .bb_0.1
jmp .exit_0
.bb_0.1:
inc rax
add dil, 72
cmovl bx, si
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 11
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
xor ax, 913
test ax, 19339
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
add al, -76 # instrumentation
adc sil, 58
add bl, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
