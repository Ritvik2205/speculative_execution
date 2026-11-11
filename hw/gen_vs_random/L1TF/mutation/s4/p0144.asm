.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rcx, rdi
cmovb ax, bx
mov edi, 2036069402
sub edx, -33
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 93
add cl, 55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
setnle dl
mov bl, al
add cl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
cmovl edi, ebx
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
cbw
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
