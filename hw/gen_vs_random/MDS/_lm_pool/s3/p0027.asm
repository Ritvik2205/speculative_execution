.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
xor cl, bl
xor bl, 67
and bx, 46
and sil, -56
and al, -54
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
or dl, -89
xor sil, -14
bts dx, ax
xor al, dil
and rax, 4
cmovle dx, di
bt bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
