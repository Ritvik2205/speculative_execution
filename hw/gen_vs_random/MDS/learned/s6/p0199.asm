.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
test dil, 46
and al, cl
or cl, dl
or al, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
xor dl, al
xor al, 115
xor cl, dl
or sil, -78
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 19
btr dx, 47
jmp .bb_0.2
.bb_0.2:
xor cl, 24
xor sil, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
xor ax, -1005
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
