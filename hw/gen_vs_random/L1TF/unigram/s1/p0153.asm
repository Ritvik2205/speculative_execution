.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 16
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
sbb bx, 74
cmovl di, dx
add bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 49
and rcx, 46
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rdi
cmovno si, si
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 65
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
cmp bl, dil
cmovnl bx, si
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
