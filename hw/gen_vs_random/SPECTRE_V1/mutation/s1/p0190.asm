.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
cmovnle esi, edx
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
sbb cl, al
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -54
lea dx, qword ptr [rsi + rdi]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
add al, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
add dl, cl
or al, 19
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
