.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
or sil, -78
and cl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and ax, 19740
test eax, 1838539683
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
or ax, -11837
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
xor bl, cl
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
