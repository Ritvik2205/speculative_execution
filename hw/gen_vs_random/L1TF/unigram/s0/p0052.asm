.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
lea rdi, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, -64
and rsi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rsi]
add dl, 70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
neg rbx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
movzx dx, al
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
sub ebx, 96
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
