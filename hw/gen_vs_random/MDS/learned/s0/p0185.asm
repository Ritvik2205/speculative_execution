.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
or rsi, 97
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or rdi, -11
btr cx, 136
test bl, -14
and sil, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and bl, bl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
