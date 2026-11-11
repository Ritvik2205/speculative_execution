.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
cmovnp eax, ebx
cmp sil, -11
and cl, al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
inc dil
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
movsx rdx, ax
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
test al, cl
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
