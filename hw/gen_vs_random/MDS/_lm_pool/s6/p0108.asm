.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
and al, cl
and sil, -56
xor dil, 124
or bl, 13
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and cl, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and cl, dl
bt edi, edx
and dil, sil
and bl, al
or cl, 7
xor cl, 98
and sil, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
or rcx, 54
test eax, 158941032
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
