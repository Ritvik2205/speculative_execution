.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
bt si, 18
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
add bl, -123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
add dl, 63 # instrumentation
cmovl dx, ax
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 6
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt si, 63
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 51
cmovnbe rsi, rax
sbb sil, 126
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
not rcx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
