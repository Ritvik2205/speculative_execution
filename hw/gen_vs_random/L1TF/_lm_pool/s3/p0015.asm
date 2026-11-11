.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
xor dl, dil
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
setb al
jmp .bb_0.1
.bb_0.1:
and cl, dl
btc bx, si
xor bl, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
lea rbx, qword ptr [rcx + rdx + 25]
jmp .bb_0.2
.bb_0.2:
or bl, -5
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
