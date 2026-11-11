.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
sbb ecx, 15
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
inc rcx
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
xor rdi, rbx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rax + rcx + 26]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
sub dl, sil
bt rax, 41
adc bx, 19
lea eax, qword ptr [rbx + rbx + 18245]
and al, dil
neg cl
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
