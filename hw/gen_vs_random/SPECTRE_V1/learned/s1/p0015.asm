.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
add rax, 1503210561
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
xor eax, -764881786
or dil, al
dec dl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
cmovnp rcx, rdx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
lea esi, qword ptr [rax]
lea edx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
xor eax, -764881786
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
