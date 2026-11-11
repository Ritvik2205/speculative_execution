.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and cl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
test cx, ax
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
bt rsi, rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 65
jmp .bb_0.1
.bb_0.1:
xor bl, -88
cmovz esi, eax
cmovnle rax, rsi
and al, -40 # instrumentation
cmovle di, ax
test ecx, -1843375753
and cl, 118 # instrumentation
cmovp esi, ebx
bt rcx, rbx
xor sil, -126
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
