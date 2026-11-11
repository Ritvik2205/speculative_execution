.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
xchg sil, sil
adc dl, bl
add al, -25 # instrumentation
sbb bx, ax
btc dx, 91
cmp bl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
sub cl, sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
xor bx, 47
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
add ecx, 7
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
xor rax, rdx
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
