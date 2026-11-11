.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
or sil, -78
jmp .bb_0.2
.bb_0.2:
xor sil, 27
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and dil, sil
and bl, cl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test rdx, 34
xor rcx, 71
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
or cl, 39
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and dil, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
