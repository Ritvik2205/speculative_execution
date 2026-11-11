.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 6
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 68
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
movzx rdx, bx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setnp bl
cmovp di, dx
sub bl, -6
setz al
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 32
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
