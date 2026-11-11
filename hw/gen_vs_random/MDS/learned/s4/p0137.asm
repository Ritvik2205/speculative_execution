.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, si
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and al, 49
and al, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
test sil, 17
or sil, -78
and cl, -111
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 72
xor al, dl
xor dl, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
btr di, ax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or rsi, 51
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
