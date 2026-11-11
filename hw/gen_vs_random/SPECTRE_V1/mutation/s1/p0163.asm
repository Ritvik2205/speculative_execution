.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
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
or word ptr [r14 + rdx], -119
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
setp bl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
sub ax, -17837
sbb si, bx
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
cmp dl, 71
neg ax
cmovnb esi, ebx
setbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
