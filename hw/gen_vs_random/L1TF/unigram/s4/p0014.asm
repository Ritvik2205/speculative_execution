.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdi, 13
inc rax
add bl, -127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and cl, 25
setnle sil
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sbb bl, -88
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 37
xor bl, bl
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 58
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
sub rax, -15
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
