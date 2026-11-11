.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
xchg sil, bl
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
lea edi, qword ptr [rcx]
lea rax, qword ptr [rdi + rcx]
sbb sil, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, bl
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
mov cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
