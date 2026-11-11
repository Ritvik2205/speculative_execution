.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
xor ax, cx
cmovo rbx, rsi
xchg dx, bx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ecx
movsx eax, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
lea si, qword ptr [rsi + rdx + 80]
btc ax, dx
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 1
and al, -111
cmovp ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
