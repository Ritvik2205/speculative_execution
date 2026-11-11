.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
add cl, 55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 93
cmovnb rcx, rdi
mov edi, 2036069402
sub edx, -33
cmovb ax, bx
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and dl, cl
cbw
add cl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
mov bl, al
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
cmovl edi, ebx
setnle dl
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
