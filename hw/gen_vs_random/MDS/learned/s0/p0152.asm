.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, di
xor al, -4
test ebx, -2015966884
or ax, -11837
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or al, -17
or al, 16
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor edx, 94
jmp .bb_0.3
.bb_0.3:
test edi, -1252846009
xor al, sil
and cl, bl
xor al, 9
and ax, 19740
test dl, 48
xor al, 9
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
