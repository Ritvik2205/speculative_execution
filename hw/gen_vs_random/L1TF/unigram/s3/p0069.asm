.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
sub bl, dil
setb bl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
sub dl, cl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
add dx, 86
test bx, di
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 47
mov cl, al
lea bx, qword ptr [rcx + rcx + 55]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
