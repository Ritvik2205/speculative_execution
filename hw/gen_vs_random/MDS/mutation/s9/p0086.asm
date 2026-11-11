.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
bt rsi, rbx
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rbx, 65
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
test cx, ax
and cl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
jmp .bb_0.1
.bb_0.1:
cmovz esi, eax
cmovnle rax, rsi
and al, -40 # instrumentation
cmovle di, ax
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor bl, -27
bt rcx, rbx
test ecx, -1843375753
and cl, 118 # instrumentation
cmovp esi, ebx
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
