.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 98
btc eax, 220
sub bl, 15
test eax, 899472326
inc esi
sub al, -47
cmovbe edi, ebx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
