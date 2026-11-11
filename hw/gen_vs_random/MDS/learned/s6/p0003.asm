.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edi
test al, bl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor sil, -14
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and al, 49
jmp .bb_0.1
.bb_0.1:
or cl, 7
jmp .bb_0.2
.bb_0.2:
or edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
test al, 66
test dl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
