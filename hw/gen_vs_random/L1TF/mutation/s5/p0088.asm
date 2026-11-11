.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rcx, al
lea rdx, qword ptr [rcx + rdx]
lea rcx, qword ptr [rsi + rcx + 155]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
or cl, al
sub al, cl
add dx, dx
or al, cl
jmp .bb_0.1
.bb_0.1:
xor cx, 113
bts bx, 223
add cl, -20
add al, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
imul rbx, rbx, -39
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
