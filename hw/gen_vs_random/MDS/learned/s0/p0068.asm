.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
test bl, sil
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
or cx, 39
jmp .bb_0.1
.bb_0.1:
and al, 84
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
or al, -61
and al, -54
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 22
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
jmp .bb_0.3
.bb_0.3:
xor sil, 94
or bl, -54
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
test al, -7
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
