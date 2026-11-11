.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 87
or al, -24
test eax, -675944960
not al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
or cl, bl
xor cl, dil
or ax, -7150
test dl, bl
jmp .bb_0.1
.bb_0.1:
or ebx, esi
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
or al, -58
xor sil, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
