.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
lea rcx, qword ptr [rbx + rsi + 4951]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
test al, bl
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and al, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
add cl, 102 # instrumentation
sbb si, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
