.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and dl, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
bts rbx, 115
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
jmp .bb_0.1
.bb_0.1:
test cl, 62
or al, dil
jmp .bb_0.2
.bb_0.2:
test bl, 65
jmp .bb_0.3
.bb_0.3:
xor si, 80
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or bl, dl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
or rax, -1523798580
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
