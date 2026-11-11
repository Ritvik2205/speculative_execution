.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test al, 91
test cl, 54
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and cl, dil
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or sil, al
test al, 91
xor ax, 31969
cmovbe ebx, edx
and rax, -2039117613
test cl, -18
test rax, -359674714
jmp .bb_0.1
.bb_0.1:
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
