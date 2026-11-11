.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
test cl, -24
lea rdi, qword ptr [rsi + rcx + 68]
mov cl, bl
xchg dil, bl
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
test al, -126
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
sbb sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
