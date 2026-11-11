.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
or bl, al
and sil, -69
and sil, sil
test ebx, -2015966884
xor al, -19
xor dil, 81
or bx, 44
and bl, al
test rbx, 69
or ax, -11837
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
