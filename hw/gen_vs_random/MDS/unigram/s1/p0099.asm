.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and bl, 120 # instrumentation
cmovnp bx, dx
or rdi, -11
xor al, al
cmovns edx, ecx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
btr edx, 255
test cl, -18
xor cl, sil
or al, -22
test edi, eax
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and cl, 78 # instrumentation
cmovs di, cx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
not dl
and cl, 8 # instrumentation
cmovnl rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
