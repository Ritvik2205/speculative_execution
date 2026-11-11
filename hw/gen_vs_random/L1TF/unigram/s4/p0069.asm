.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
btc rdx, 79
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdi]
xor bl, -116
lea bx, qword ptr [rcx]
setnp dil
lea rdi, qword ptr [rbx + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 5
setnz bl
or edx, ebx
add dl, -15 # instrumentation
cmovl rdx, rdi
add dl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
