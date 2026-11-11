.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rbx, rbx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
mov al, sil
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
bts bx, 6
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
add al, 107 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
cmovo rcx, rcx
and al, sil
test sil, 47
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
lea edx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
