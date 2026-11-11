.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, 25
xor dl, 8
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 56
cmovle si, cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and cl, 9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
or dil, dil
and al, 34 # instrumentation
cmovno eax, esi
jmp .bb_0.1
.bb_0.1:
and esi, ebx
or dl, sil
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
cmovp bx, si
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 38
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
