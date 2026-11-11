.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, 94
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
test dl, -7
add al, 21 # instrumentation
adc ax, 32514
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
lea esi, qword ptr [rax + rdx + 55]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 47
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
sbb bx, cx
lea ax, qword ptr [rcx + rax + 88]
mul dil
and bl, al
xor bx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
