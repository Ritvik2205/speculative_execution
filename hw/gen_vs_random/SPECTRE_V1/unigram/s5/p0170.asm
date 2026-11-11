.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, cl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
imul ebx, ebx, 119
xchg rdi, rcx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
add al, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
or sil, al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
add dl, -86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
sbb rcx, 52
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
add dl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
