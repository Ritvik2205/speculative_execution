.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
and dil, dl
test cl, -24
sbb edx, 105
add dl, -29 # instrumentation
add dl, -70 # instrumentation
setnp dl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
xor dil, -37
add al, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
add bx, dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
