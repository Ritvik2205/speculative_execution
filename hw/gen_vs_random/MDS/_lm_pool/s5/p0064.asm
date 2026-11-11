.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
test dl, -95
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
or sil, al
and bl, 68
test dl, bl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test edi, -1252846009
and cl, -71
xor sil, -15
and al, bl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and bl, 68
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
or dil, cl
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
