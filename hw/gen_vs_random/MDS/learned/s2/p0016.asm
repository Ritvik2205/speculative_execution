.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
test bl, -9
or al, bl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and di, 99
btr rcx, 13
and dl, dl
and dil, dil
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
test bl, -9
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
