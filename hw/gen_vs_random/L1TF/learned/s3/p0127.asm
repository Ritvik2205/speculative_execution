.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
or ebx, eax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
mov rsi, 8
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
movzx ebx, di
sub dl, 23
jmp .bb_0.1
.bb_0.1:
cmp rdi, rax
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
bt edi, 230
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdi
bt rcx, rsi
bt rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
