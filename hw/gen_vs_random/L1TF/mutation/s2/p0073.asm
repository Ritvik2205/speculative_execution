.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
dec ecx
mov bl, bl
neg ebx
sub dl, 41
bswap rcx
cmp dl, -93
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
add ax, -24961
inc eax
add bl, cl
bts cx, 176
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
