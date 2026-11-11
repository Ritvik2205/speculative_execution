.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
xor al, 8
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
or cl, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or bl, al
or rbx, -72
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 97
or sil, dil
or dl, -89
or bl, 127
or bl, sil
test edx, -1561252782
test rax, 1949278494
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
