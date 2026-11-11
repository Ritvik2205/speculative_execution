.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
adc dl, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 69
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 16
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
xchg ebx, ecx
add dil, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
sub rdi, 56
bt rdx, 96
sub ebx, 82
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
