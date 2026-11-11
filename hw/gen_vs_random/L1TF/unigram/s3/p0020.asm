.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
xor al, cl
bt rax, rdi
lea rdi, qword ptr [rax + rcx + 18]
test cx, -20370
sub ax, 19828
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 18
lea ecx, qword ptr [rbx + rsi + 14]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add dl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
setp al
btc bx, 168
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
