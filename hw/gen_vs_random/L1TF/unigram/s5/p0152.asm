.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
add dl, -56 # instrumentation
cmovs rdx, rdi
sub rdx, 58
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
xor dl, 9
setnbe al
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
lea si, qword ptr [rbx + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], bx
xor cl, dil
btr edx, 7
cmp ebx, 23
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 68
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
