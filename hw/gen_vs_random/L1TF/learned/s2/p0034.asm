.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
or al, -48
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
lea rcx, qword ptr [rdx + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
