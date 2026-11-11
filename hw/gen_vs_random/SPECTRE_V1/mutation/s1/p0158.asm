.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
test cl, dl
cmovnp bx, di
add al, cl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, -78
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
or eax, 1276549484
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
inc bl
xor al, dl
or dil, 80
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
