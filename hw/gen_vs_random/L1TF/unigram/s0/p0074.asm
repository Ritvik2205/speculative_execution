.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
add dil, 68 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
add bl, -9 # instrumentation
adc rcx, 32
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
xchg sil, sil
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 75
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
sub al, -47
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
add dil, -71 # instrumentation
adc edi, edi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 36
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
