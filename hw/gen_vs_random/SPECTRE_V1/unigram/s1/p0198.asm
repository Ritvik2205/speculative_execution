.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
cmovl rdi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
test dl, 78
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, dl
or dil, sil
add dil, 27
adc sil, -18
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
btc si, 49
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], si
dec cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
