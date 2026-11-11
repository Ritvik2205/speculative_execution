.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, -9
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
cmovb bx, cx
and bl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and dl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
xor cl, 24
or edx, esi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 81
and bl, -15 # instrumentation
cmovnp bx, bx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and sil, bl
btr cx, cx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
btr dx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
