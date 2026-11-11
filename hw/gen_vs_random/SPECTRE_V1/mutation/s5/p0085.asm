.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
cmovnp bx, di
add al, cl
test cl, dl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
or eax, -1641258390
inc bl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
xor al, dl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
cmp dil, -58
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
or dil, 80
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
