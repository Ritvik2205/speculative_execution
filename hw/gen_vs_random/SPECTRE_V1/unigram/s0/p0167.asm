.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno edx, eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 72
adc rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, dil
add edi, -91
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
mov sil, bl
add bl, 2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
setns cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
