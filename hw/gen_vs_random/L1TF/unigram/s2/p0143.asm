.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
cmovz edi, ebx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
bt rax, rdx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and ax, dx
sub edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
cmp rdi, 31
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
adc rdi, rax
and bl, 89
mov bl, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 57
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
