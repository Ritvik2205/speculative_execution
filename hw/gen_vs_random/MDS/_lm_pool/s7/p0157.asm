.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 37
or dil, sil
or al, 30
xor bl, -102
and bl, 68
xor rax, -270810088
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and edx, -44
and bx, 34
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
or dl, -89
and eax, -829294476
or sil, al
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
