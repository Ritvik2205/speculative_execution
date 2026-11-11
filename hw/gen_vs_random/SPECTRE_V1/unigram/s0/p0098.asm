.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ebx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 82
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
btc ax, dx
xchg rdi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
xor ebx, 97
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
add cl, 71 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], dx
or eax, -1641258390
mov cl, dil
and rsi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rsi]
sets al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
