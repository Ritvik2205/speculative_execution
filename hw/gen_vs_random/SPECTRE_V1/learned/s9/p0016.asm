.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
test dl, bl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sbb edi, 74
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
bt ebx, 45
adc cl, dil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
