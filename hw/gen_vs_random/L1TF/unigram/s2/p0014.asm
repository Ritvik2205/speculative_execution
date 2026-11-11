.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, cx
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
bswap rsi
add cl, 104 # instrumentation
mov ecx, 55
test sil, bl
add dl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
sbb di, cx
btr cx, si
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 4
setb cl
cmovnz rdi, rcx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
