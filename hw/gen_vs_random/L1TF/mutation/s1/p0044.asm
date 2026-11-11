.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
xchg rbx, rax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add cl, -121 # instrumentation
movsx si, cl
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
xchg ebx, ecx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
cwde
lea rcx, qword ptr [rdi]
and al, bl
bswap rax
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
