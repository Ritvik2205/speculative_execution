.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add bl, 13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
cmovle bx, bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
imul ax, bx, 51
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
xor bl, dil
add cl, -110 # instrumentation
setbe bl
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
bt si, si
or rsi, 65
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
add rcx, rdx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
add bl, 110 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
sbb dx, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
