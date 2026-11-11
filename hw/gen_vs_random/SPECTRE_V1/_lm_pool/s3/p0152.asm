.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
btc rax, rax
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 39
test eax, 133988823
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
sub rdx, 92
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 65
test dl, 113
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
