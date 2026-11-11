.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
xor bl, -61
test al, -7
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
xor bl, -27
and dil, 125
or al, -24
and dl, dl
test rax, 337705873
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
xor cl, -13
or dl, dil
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
or dx, 125
xor ax, -16696
test eax, 158941032
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and eax, -829294476
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
