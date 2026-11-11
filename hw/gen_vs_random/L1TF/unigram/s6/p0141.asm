.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
add dil, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rsi
lea rdx, qword ptr [rsi + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
movsx edi, sil
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -76
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
test rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
