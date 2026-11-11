.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 61
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor di, si
and di, ax
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
or al, -78
and al, -68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 92
xor dil, 81
test dil, 46
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and cl, -87 # instrumentation
cmovo cx, ax
xor di, 40
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
