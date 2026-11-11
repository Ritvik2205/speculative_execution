.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi
mov di, 55
cmp eax, -2073187604
or al, al
xor bl, 27
xor ax, 30500
or dl, sil
or rax, -2144083737
sub al, 54
inc ecx
sbb dl, -62
cmp sil, cl
or ax, 11396
cmp rax, 2096656187
cmp dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
