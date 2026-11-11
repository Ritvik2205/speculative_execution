.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
lea di, qword ptr [rdi]
or bl, bl
or bl, 92
sub al, bl
sbb cl, dl
add cl, -127
and sil, 11
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
xor dl, 71
bts ax, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
