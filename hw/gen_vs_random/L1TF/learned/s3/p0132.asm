.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 76
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
xor al, bl
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
xor al, 45
xor dl, bl
or al, cl
sub rax, -2089384489
or rdi, 42
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
add cl, bl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
