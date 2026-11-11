.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
xor al, -89
test cx, bx
test ecx, -1843375753
xor sil, al
and bl, 20 # instrumentation
cmovo edx, esi
cmovnb edi, eax
jmp .bb_0.1
.bb_0.1:
and sil, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 23
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 20
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor cl, 24
btc rdx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
cmovo ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
