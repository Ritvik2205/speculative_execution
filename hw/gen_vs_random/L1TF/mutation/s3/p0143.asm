.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
xor al, bl
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
cmp sil, -11
test al, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
inc dil
movsx rdx, ax
cmovnp eax, ebx
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
mov cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
