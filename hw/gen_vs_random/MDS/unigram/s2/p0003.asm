.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdx, rax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 90
and si, cx
or bl, al
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 68
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
test cl, -113
test bl, sil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
btr di, 89
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
or bl, sil
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
