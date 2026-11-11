.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor sil, -126
xor sil, 27
test al, 22
jmp .bb_0.1
.bb_0.1:
or eax, ebx
or bl, dl
test eax, 158941032
or al, -17
btr di, cx
test bl, -9
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
