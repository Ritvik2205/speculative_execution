.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and al, -54
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, cl
xor sil, al
dec di
or eax, -1641258390
cmp esi, 21
jmp .bb_0.2
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
add cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
