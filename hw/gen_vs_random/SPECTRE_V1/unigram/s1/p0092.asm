.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, esi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 50
lea ax, qword ptr [rax + rcx + 12]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
btc ebx, 218
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
add bl, -118 # instrumentation
cmovp dx, dx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
lea si, qword ptr [rdi + rsi]
cmovnz ax, bx
or dx, 14
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
