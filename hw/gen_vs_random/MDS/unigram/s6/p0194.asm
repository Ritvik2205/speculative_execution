.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
bts rsi, rcx
and ecx, -104
xor al, 99
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and al, -26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor bl, -27
bts rdx, rsi
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
test ecx, -1843375753
and dl, al
xor bx, 25
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 53
and dil, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
