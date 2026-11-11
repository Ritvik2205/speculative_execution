.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
add dl, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 11
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
mov bl, dl
adc cl, -18
sub rbx, -128
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmovno eax, edx
cmovp ax, di
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
