.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
bswap rcx
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
neg ebx
bts cx, 176
add ax, 116
add bl, cl
cmp dl, -56
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
mov bl, bl
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
inc eax
dec ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
sub dl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
