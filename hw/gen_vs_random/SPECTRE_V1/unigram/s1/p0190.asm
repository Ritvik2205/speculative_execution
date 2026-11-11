.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
add cl, 22 # instrumentation
cmovns rbx, rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 74
setnz al
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
setnl dil
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 63
add bl, 7 # instrumentation
cmovnl ebx, esi
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
lea bx, qword ptr [rdx + rax]
add cl, -109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
