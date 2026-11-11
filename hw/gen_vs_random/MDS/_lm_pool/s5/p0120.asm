.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
test dil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or al, al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test sil, cl
or esi, edi
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
xor dil, sil
xor cx, -18
bt si, cx
xor cl, 55
xor ax, -5889
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
bt esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
