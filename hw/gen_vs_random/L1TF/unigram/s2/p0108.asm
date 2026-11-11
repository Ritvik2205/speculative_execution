.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
cmovl ax, di
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
test bx, 52
xor cl, cl
test esi, 65
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
add cl, 40 # instrumentation
cmovp rbx, rcx
sbb sil, dil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
imul rdx, rax
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
