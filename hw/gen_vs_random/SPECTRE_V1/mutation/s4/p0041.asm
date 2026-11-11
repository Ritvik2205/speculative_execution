.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 32 # instrumentation
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
xor eax, 1034314125
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
xor eax, -764881786
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
