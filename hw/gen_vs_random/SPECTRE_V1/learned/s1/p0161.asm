.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
add rax, 6
test al, -71
cmp dl, sil
add bl, -95
or bl, bl
sub dil, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
