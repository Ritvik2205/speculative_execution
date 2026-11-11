.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xor bl, -27
or dl, al
and rax, 4
test sil, al
and sil, sil
or al, -75
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
or sil, dl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
