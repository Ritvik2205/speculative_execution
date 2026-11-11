.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle cl
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
test sil, al
adc dl, bl
add al, -25 # instrumentation
sbb bx, ax
btc dx, 51
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
xor bx, 47
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
add ecx, 12
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
xor rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
