.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 14
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xor dil, -42
inc dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bx, 35
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 88
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
or eax, -401020526
xor bl, al
add edi, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
