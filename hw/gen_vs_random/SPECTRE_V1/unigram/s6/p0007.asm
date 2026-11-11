.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
setz dl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 63
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
add dl, -86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 84
test bl, -8
lea rsi, qword ptr [rbx + rbx + 95]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
cmovno di, bx
lea rdx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
