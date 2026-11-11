.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
add dl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
lea rbx, qword ptr [rcx + rax]
cmovl rcx, rdi
xchg bl, bl
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
adc esi, esi
sub eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
