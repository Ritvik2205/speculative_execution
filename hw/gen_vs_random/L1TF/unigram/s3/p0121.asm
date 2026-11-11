.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
xchg dl, al
mov al, dl
bswap edx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
add bl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
inc edx
add cl, 72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
lea rbx, qword ptr [rbx + rdx]
lea rax, qword ptr [rdx + rdi + 8]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
