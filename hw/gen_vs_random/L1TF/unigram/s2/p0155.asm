.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovnbe dx, dx
lea edx, qword ptr [rdi + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
btc dx, ax
lea rbx, qword ptr [rbx + rdx + 57]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
adc rax, -1877286258
movsx edi, dil
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 42
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
btr dx, ax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 77
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
or sil, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
