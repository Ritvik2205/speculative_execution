.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
cmp rdx, rdx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, 14
lea ebx, qword ptr [rsi]
mul bl
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
xor cl, 80
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 11
adc eax, 551972257
sbb cl, bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 36
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and eax, 1167476476
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
