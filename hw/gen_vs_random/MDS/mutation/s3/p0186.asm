.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
bt rsi, rbx
and cl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rbx, 65
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
test cx, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
cmovnle rax, rsi
test ecx, -1843375753
and al, -40 # instrumentation
cmovle di, ax
xor bl, -88
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
bt rcx, rbx
xor sil, 27
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and cl, 118 # instrumentation
cmovp esi, ebx
cmovz esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
