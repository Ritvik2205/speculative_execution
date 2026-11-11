.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 76
imul eax, eax, 45
sub sil, -18
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
add al, 120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovle ax, ax
test al, 34
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
