.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, 22
sbb dil, 90
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
xor dil, al
or dx, 57
adc al, bl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
test al, 114
test dil, dl
sbb al, -14
test sil, 1
adc bl, dl
add dl, cl
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
or dl, cl
cmp bl, dil
or bx, -33
sub rax, 120
adc sil, 111
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
test al, -24
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
xor dx, -43
imul dx, di
or bl, 111
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
or edi, -64
xchg dl, sil
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
xor al, -40
xor ax, -29507
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
