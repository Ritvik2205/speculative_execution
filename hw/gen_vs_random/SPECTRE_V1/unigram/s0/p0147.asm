.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
add dl, -47 # instrumentation
sbb al, 68
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 61
xor al, -42
add bl, 70
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
mov dl, al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sub si, dx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdx
sub dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
