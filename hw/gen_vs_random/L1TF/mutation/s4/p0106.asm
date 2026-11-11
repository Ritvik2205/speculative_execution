.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor dl, 9
cwde
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
sub rax, 1806572419
cmovno rsi, rbx
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
cwd
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bts ax, 201
dec bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
