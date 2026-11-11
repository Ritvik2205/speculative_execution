.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
xor sil, 27
or cl, 39
bts rcx, 64
and ebx, 74
or dl, -97
and dil, cl
xor dil, -70
jmp .bb_0.1
.bb_0.1:
and ebx, 59
not dil
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
