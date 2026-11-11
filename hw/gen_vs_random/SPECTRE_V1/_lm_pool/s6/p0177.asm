.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 80
lea rsi, qword ptr [rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
or edi, 71
or rax, -1571963467
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sub ax, 124
sub dx, -23
xchg sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
