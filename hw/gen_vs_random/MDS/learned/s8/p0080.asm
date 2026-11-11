.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 5001
xor dl, 40
or cl, bl
test al, 22
or al, -78
btr esi, ebx
test cl, dl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
or esi, -110
test dl, sil
bt rdx, rdi
bt di, si
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
