.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rcx
cmp dl, -56
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
add ax, -24961
add bl, cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
inc eax
bts cx, 176
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
sub dl, 41
dec ecx
neg ebx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
mov bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
