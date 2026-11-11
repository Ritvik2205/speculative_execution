.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -92
and eax, -409673666
test dl, 84
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
xor sil, bl
jmp .bb_0.1
.bb_0.1:
or dil, cl
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
lea si, qword ptr [rcx + rax + 100]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
