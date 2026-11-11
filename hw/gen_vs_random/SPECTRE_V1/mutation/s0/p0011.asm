.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle esi, edx
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
sbb cl, al
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, cl
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
add al, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
lea dx, qword ptr [rsi + rdi]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and al, 33
or al, 19
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
