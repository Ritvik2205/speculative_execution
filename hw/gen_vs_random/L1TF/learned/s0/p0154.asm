.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -36 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
and al, -68
xor bl, dil
xor al, dil
mov dil, 88
or ax, -18131
add bl, dil
jmp .bb_0.1
.bb_0.1:
lea eax, qword ptr [rdx + rbx]
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
