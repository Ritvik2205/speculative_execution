.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 79
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
lea bx, qword ptr [rcx]
setns al
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -120
lea rdi, qword ptr [rcx + rdi]
add al, -29 # instrumentation
add al, -70 # instrumentation
setnp al
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
add dl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
bt eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
