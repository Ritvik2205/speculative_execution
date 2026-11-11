.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
or sil, cl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 46
and al, sil
and cx, -8
and di, 99
test dil, -80
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
xor bl, -88
jmp .bb_0.1
.bb_0.1:
cmovnp rsi, rax
btr ax, 193
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
