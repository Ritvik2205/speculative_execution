.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
bswap rdi
or dl, al
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and bl, -65
add sil, -68
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
sub cl, -21
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
