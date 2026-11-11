.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
lea rcx, qword ptr [rax + rcx + 59274]
btc ebx, 29
dec rcx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 33
sbb rcx, 36
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
add cl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 45
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, 46
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
test dl, 77
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
lea di, qword ptr [rsi + rcx + 47]
sub eax, -518999763
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
