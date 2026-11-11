.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdi, rdi
cwde
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
xor dx, 62
or dil, -55
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
xor si, 23
lea rcx, qword ptr [rax + rax + 44]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
dec rsi
sub rax, -132886581
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdi], si
lea di, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
