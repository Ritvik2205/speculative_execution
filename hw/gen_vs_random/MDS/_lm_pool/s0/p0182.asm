.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 15
bts rdx, rcx
xor rbx, 89
bts rbx, rax
test ecx, -1843375753
or al, al
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and di, 91
or cl, 30
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or dil, -41
jmp .bb_0.1
.bb_0.1:
btr rax, 56
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
and ax, -10351
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
