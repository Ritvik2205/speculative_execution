.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, ebx
cmovnbe edi, esi
test sil, 32
and cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 96
cmovz cx, dx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 10
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
jmp .bb_0.1
.bb_0.1:
xor si, 74
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovp cx, di
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmovz ax, cx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 88
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
and ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
