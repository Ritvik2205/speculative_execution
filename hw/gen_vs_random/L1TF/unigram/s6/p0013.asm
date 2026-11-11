.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
sub rdx, rdi
setnle dil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
cmovnbe rax, rdi
sub di, 63
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
inc rdx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
add al, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
