.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
test al, -32
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and sil, 37
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
