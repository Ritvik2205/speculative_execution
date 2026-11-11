.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
cmp rax, -1877933118
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
inc bl
or dil, 80
or eax, -1641258390
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
xor al, dl
cmp dil, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
