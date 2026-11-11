.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 39
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 48
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add cl, 35 # instrumentation
sets al
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
sub eax, 37
setnz dl
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
imul bx, dx, 51
add al, 121 # instrumentation
setnb bl
xor ebx, -81
lea di, qword ptr [rax + rcx]
and dil, 58
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
