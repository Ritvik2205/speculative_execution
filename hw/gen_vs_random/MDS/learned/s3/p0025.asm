.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 97
or di, 9
or sil, -78
and al, bl
or rcx, -17
test eax, 1287331633
test bl, -14
or rdi, -11
or dil, -78
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
xor si, 80
bt edx, edi
jmp .bb_0.2
.bb_0.2:
and esi, 74
or al, cl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
