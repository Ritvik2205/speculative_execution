.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
lea ebx, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
imul esi, eax
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -63 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 13
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
setb bl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
