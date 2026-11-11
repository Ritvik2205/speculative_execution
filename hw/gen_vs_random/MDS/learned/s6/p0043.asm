.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
and al, -114
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and di, 99
or cl, dl
test bl, -14
not dil
xor di, 93
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
or sil, cl
and ebx, 76
or rax, 1020005579
xor dl, 8
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
not sil
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
