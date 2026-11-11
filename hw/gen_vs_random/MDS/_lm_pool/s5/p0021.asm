.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
test dil, -80
or cl, -36
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and sil, -9
and cl, cl
and sil, sil
and cl, dil
xor bl, -88
and al, al
xor dl, cl
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
xor al, -19
xor cx, -18
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
btr di, cx
cmovle si, bx
xor sil, dil
not dl
or dl, -31
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
