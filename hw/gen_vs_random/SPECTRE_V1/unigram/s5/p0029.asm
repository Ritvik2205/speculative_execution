.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rsi + rdx]
add rsi, 109
adc al, -92
add rcx, 23
xchg dil, al
adc cx, -30
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
setnz bl
lea rcx, qword ptr [rsi + rsi + 85]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rbx + rsi]
cmovnp ax, dx
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 95
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
adc ebx, 55
inc esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
