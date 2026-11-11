.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 1
movsx bx, sil
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
add dl, 47
lea rsi, qword ptr [rbx + rsi]
test dl, -7
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add di, 44
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 21
sub dl, -12
mov cl, cl
imul rbx, rdx, 41
xor al, dl
test ebx, -1465665890
add al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 50
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
