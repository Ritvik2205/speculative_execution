.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, sil
add cl, -127
btc rax, rdx
sub di, 3
js .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -54
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
