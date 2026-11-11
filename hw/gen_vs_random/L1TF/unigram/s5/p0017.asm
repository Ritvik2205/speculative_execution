.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rcx, cx
lea ebx, qword ptr [rbx + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf cx, si
dec dx
mov al, al
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
sbb al, 92
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
cmovp edi, eax
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
