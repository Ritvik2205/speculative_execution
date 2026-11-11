.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
mov cl, cl
cmovnp eax, ebx
test al, cl
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
xor al, bl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and cl, al
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
cmp sil, -11
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
movsx rdx, ax
jmp .bb_0.1
.bb_0.1:
add cl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], -54
add al, 93
lea edx, qword ptr [rdi + rdx]
lea ax, qword ptr [rdi + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
setno cl
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
setnl bl
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
