.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
sub cl, al
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
xor al, cl
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
adc ax, -27488
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 54
adc al, sil
imul rbx, rsi, 36
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
