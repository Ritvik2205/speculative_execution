.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
sub dl, -49
setz bl
xchg esi, eax
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
cmovnbe edx, edi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
cmovnz rbx, rsi
xor eax, -885407671
lea bx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
lea cx, qword ptr [rdi + rcx + 55876]
lea ebx, qword ptr [rsi + rcx]
lea cx, qword ptr [rdx + rdx + 9623]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
