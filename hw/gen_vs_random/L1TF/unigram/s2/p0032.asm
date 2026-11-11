.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
sub dil, -70
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
setnz al
cmovnb ebx, eax
sbb al, 61
inc al
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
add al, 27 # instrumentation
setnle al
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
or rsi, 48
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
