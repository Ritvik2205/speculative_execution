.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or cl, al
test rsi, 879594088
or ax, -17790
cmovl rcx, rax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or rdx, rdi
btc bx, 179
cmovp rbx, rax
xor dl, al
or dl, 22
xor cl, bl
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
