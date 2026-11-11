.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, 25
add al, 19 # instrumentation
setnz dil
and dil, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 65
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and al, -54
cmp bx, 100
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
cmovnb rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
