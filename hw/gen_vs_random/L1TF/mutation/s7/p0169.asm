.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
inc dil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
mov cl, cl
test al, cl
and cl, al
cmp sil, -11
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
xor al, bl
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
movsx rdx, ax
cmovnp eax, ebx
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
