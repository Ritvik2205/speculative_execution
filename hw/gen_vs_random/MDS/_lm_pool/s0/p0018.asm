.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -6
bts rbx, rcx
btc si, cx
bt di, ax
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or al, -22
and dl, dil
xor bl, -102
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or dil, sil
or sil, -78
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
