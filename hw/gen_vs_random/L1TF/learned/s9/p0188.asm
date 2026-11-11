.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
xor bl, sil
test al, dil
cmp dl, dil
or bx, 90
xor sil, dil
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 55
test bl, bl
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
cmovs cx, dx
add al, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
