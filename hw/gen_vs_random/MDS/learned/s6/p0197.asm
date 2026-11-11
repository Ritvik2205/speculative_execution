.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, cx
xor al, -26
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
bts rax, 77
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
xor dl, -43
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor sil, dl
test bl, -114
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
jmp .bb_0.2
.bb_0.2:
or cl, al
test eax, 298249463
and al, 75
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
