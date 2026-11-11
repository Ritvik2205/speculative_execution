.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
and cl, al
inc dil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
cmovnp eax, ebx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
xor al, bl
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
mov cl, cl
movsx rdx, ax
test al, cl
cmp sil, -11
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
