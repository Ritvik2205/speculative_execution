.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edi, edx
add dil, -95 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
xor al, al
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
add sil, cl
setns dil
setnbe sil
add dl, 98 # instrumentation
inc dl
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
cmp cl, cl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
setle dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
