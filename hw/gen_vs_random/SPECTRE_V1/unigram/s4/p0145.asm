.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, di
sets cl
add dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
sub rcx, 13
add bl, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
neg rdx
sbb sil, -78
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 43
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ecx
mov dl, bl
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
