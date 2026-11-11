.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
setp dl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
not al
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
inc al
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
cmp bl, 123
xor rcx, 83
lea rdi, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and al, -68
sbb rbx, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
