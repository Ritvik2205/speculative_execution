.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -696456144
and dx, 3
or bl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
test dil, dl
xor al, -26
or al, -22
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor al, 9
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
xor dl, -43
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
