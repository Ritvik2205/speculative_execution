.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
cmovno dx, cx
or rdi, 68
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mul cx
adc bx, cx
cmovle rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 93
cmp sil, 25
adc sil, dl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
