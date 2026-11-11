.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 90
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
xor bl, 38
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 61
btr rsi, rbx
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
bt rcx, rbx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
or edx, 60
xor dil, bl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
