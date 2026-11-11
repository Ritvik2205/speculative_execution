.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, 32
xor si, -50
sbb ax, di
cmovns rcx, rcx
add cl, 107 # instrumentation
cmovnl bx, bx
cmp edi, edi
lea rsi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
imul rcx, rdx
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
mov dl, dil
cmovnz rax, rsi
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
