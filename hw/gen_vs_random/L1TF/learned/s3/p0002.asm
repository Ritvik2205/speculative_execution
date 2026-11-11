.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 15
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
xor bl, dl
cmp al, 56
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor sil, bl
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test rcx, rax
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 50
xor rsi, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
