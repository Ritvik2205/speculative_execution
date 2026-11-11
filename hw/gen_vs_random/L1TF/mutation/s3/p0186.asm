.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
sub dl, -49
bts cx, 176
mov bl, bl
bswap rcx
neg ebx
add bl, cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
add ax, 1313
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
dec ecx
inc eax
cmp dl, -56
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
