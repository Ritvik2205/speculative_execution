.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dl
cmp rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
movsx rax, si
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
xchg rbx, rdi
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
sub rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
