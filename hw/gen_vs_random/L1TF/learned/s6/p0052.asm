.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
cmp rsi, 36
or ecx, edx
cmp ax, -21455
and al, -68
not bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
setb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
