.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 65
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, dl
or cl, -62
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
xchg rdi, rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
