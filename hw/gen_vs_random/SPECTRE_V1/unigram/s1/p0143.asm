.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rsi + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 68
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
xchg bx, cx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
sbb cl, -122
add al, -106
cmovl bx, ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
add dl, 116 # instrumentation
cmovbe rsi, rsi
add rsi, 32
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
cmovnbe rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
