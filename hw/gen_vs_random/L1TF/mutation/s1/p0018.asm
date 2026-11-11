.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
add cl, -121 # instrumentation
movsx si, cl
xchg rbx, rax
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
lea rcx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and al, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
bswap rax
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
xchg ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
