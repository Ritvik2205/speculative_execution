.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 25
or dl, bl
xor dl, -43
xor cl, sil
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
xor al, -4
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and dl, dil
xor al, 34
or dl, 85
not bl
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
