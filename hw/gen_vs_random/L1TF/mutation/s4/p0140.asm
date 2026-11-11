.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], eax
or cl, al
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
lea rdx, qword ptr [rcx + rdx]
add dx, dx
or al, cl
movzx rcx, al
lea rcx, qword ptr [rsi + rcx + 155]
sub al, cl
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add cl, 88
xor cx, 113
add al, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
imul rbx, rbx, -39
bts bx, 223
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
