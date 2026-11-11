.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -3
xchg ax, ax
add al, -122 # instrumentation
cmovnbe edx, edx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], sil
bswap rbx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 112
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
