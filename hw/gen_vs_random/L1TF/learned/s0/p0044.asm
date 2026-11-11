.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -93 # instrumentation
xchg rdx, rcx
lea rbx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
or rax, -263404965
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rax, 74
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
cmp bl, dl
setnz dil
xor cl, sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
cmovle si, si
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
