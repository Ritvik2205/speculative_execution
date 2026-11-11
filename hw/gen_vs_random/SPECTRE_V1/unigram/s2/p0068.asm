.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 28 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add cx, -103
add bl, 70
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 93
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
lea bx, qword ptr [rsi + rdx + 36]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
add rbx, 8
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
