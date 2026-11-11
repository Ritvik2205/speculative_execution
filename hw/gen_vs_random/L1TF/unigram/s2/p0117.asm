.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
lea cx, qword ptr [rcx]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
xor bl, al
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sub dl, dil
add cl, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
add cl, dil
btc si, dx
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
cmovbe dx, dx
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
