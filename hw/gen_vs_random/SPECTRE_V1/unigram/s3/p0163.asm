.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
imul ebx, edx, 51
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
cmovs ax, di
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add al, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
or al, 100
setle al
inc cl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 79
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
lea edi, qword ptr [rax + rdi + 78]
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
