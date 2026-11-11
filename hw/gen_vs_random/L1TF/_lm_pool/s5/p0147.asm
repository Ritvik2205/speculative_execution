.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
inc al
add bl, 68
xor al, 38
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
test ebx, esi
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
not sil
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
