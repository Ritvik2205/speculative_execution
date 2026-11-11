.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, -93
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
add bl, 73 # instrumentation
mov rbx, 33
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rdi, rbx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
xchg al, bl
cmovnle dx, cx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 32 # instrumentation
cmovnbe rdx, rbx
cwd
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sub dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
