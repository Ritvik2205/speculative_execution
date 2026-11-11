.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
add bx, -65
inc eax
sub cl, -47
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
xor al, -89
test bx, 72
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp esi, 72
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
test sil, al
test dx, 63
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
