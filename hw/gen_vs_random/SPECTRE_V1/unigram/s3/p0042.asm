.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdi, rdi
add al, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
btr bx, 53
sub al, 10
add cl, 97 # instrumentation
adc ax, si
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
add cl, -26 # instrumentation
cmovnp si, di
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 642565565
sbb sil, cl
add dl, 56 # instrumentation
cmovns eax, edx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 63
adc al, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
