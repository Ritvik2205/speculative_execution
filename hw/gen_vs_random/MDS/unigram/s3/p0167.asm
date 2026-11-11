.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
xor dil, -70
or dx, 125
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
cmovns ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
cmovbe si, cx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
test cl, 0
jmp .bb_0.1
.bb_0.1:
or dl, -89
cmovb ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
cmovz rbx, rbx
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
bt si, cx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and esi, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
