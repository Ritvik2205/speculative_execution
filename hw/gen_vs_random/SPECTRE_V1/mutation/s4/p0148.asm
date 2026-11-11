.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
cmovnp bx, di
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
add al, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
xor al, dl
or dil, 80
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
cmp dil, -78
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
inc bl
or eax, 1276549484
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
