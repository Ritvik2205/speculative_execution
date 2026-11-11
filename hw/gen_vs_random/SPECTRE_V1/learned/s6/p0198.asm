.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 16
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jnz .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
