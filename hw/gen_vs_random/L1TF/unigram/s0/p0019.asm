.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dx, bx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
test al, bl
cmovnp di, dx
bt esi, 28
bswap rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
or rax, 699028911
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 57
lea rcx, qword ptr [rbx + rdx]
add bl, 111 # instrumentation
cmovs rdi, rdi
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
