.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
imul esi, esi, -106
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
lea rsi, qword ptr [rdi + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bl, dl
movzx rdi, dx
bswap rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
add dl, -86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
mov cl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
