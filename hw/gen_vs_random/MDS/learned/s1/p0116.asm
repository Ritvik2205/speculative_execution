.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or bl, 127
and bl, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and cl, cl
and sil, -56
test esi, 1857129931
xor bl, -27
or al, -61
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, 25
test cl, 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
