.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
cmovb ax, bx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 93
mov edi, 2036069402
cmovnb rcx, rdi
sub edx, -33
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and dl, cl
cmovl edi, ebx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
mov bl, al
cbw
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
add cl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
setnle dl
jmp .bb_0.2
.bb_0.2:
add al, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
adc esi, esi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
xor ax, 32760
cmp ax, 7046
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
lea eax, qword ptr [rsi + rbx + 1473]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
