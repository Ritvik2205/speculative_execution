.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
adc ebx, eax
add ax, 6980
xor al, cl
and dl, -109
and cl, al
add dl, al
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
cmovp bx, di
lea ebx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
setns al
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
mov rbx, -8992833348021516010
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnbe ebx, esi
add al, al
setbe bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
