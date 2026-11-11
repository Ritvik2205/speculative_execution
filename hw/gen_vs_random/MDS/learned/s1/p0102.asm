.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
or rdi, -11
and cl, -19
xor rdi, -9
or al, 30
and bl, 68
test sil, bl
xor sil, dil
or sil, -49
and di, 91
test dil, dl
cmovnp rcx, rdx
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
