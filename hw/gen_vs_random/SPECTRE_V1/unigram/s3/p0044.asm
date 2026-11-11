.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
add dl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
add dil, 112 # instrumentation
adc dil, bl
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
jno .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, -49
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
lea rsi, qword ptr [rax + rsi + 54]
add cl, 46 # instrumentation
sbb rbx, 57
and dil, -93
btc bx, di
add cl, -119 # instrumentation
adc al, bl
btc ebx, ebx
adc ax, dx
lea eax, qword ptr [rdx + rdx + 39359]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
