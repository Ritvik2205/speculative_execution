.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
sbb dl, 127
inc sil
cmp rsi, 53
lea rbx, qword ptr [rcx + rdi + 79]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
test cx, -17886
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
xchg eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
