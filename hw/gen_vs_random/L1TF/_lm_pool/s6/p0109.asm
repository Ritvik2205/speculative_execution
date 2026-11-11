.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
sbb cl, -11
or sil, al
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 62
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 21
and dl, dl
add ecx, 33
sub dl, -49
jmp .bb_0.2
.bb_0.2:
or sil, dil
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
