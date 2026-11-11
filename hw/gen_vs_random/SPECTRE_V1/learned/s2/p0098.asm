.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
add al, -13
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
cmp ax, 7046
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
lea cx, qword ptr [rdx]
xchg ebx, edi
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
add edi, -91
js .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, bl
adc bl, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
