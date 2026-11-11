.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
test al, 48
cmovno bx, ax
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
