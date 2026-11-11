.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add rdi, 88
not ecx
lea cx, qword ptr [rax + rsi + 25]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and cl, 86
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
lea rax, qword ptr [rdx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
