.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, si
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
test edx, -372470678
and rax, 452940266
test ecx, -1843375753
and di, 99
jmp .bb_0.2
.bb_0.2:
xor rdi, -9
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
or bl, dil
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
