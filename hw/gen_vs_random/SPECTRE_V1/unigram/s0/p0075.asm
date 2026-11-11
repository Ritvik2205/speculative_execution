.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 7
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
setle al
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
mov al, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 63
cwd
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
setbe cl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
