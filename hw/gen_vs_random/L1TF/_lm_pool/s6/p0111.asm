.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or rsi, 18
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and rax, 1994547909
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
adc bl, 86
bswap rcx
cmovle rdx, rax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
