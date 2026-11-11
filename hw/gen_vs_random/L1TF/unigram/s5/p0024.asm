.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
add dl, dil
dec edx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
test dil, -126
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
sub ebx, eax
adc al, al
setb dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
