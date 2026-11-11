.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 1
mov dil, al
add cl, -127
and dil, al
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
add dl, 95 # instrumentation
cmovnb rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
cmp rdx, -19
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
add cl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
seto cl
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
