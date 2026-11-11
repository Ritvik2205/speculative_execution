.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
cmovl ecx, edi
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
lea ebx, qword ptr [rdi + rdi]
jmp .bb_0.1
.bb_0.1:
add cl, -121 # instrumentation
movsx si, cl
xchg ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
xchg rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and al, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
bswap rax
cwde
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
