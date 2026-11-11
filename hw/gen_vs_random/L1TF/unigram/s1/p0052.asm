.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edx, 5
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
or sil, sil
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
add al, 64 # instrumentation
cmovnl rdx, rax
add dl, -15 # instrumentation
cmovl rdx, rdi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 35
sbb cl, cl
sub dl, bl
jmp .bb_0.1
.bb_0.1:
btc rcx, rdx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
add cl, 19
xchg eax, ebx
mov esi, edx
lea esi, qword ptr [rax + rdx + 80]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
