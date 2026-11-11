.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and ax, 31082
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
or al, 24
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and cl, 79
and rax, 41
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.2
.bb_0.2:
test bl, 65
xor sil, 110
or dil, dil
or sil, dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
