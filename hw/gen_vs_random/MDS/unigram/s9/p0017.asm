.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
btc ebx, eax
bt ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 94
btr cx, di
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 19
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
xor cl, 98
btc edi, 230
test eax, 158941032
jmp .bb_0.1
.bb_0.1:
test edx, ebx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
test cl, 62
and bl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
xor sil, al
btc rdx, 86
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
