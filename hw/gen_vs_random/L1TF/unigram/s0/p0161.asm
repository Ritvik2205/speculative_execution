.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rsi + rdx]
or sil, cl
add al, 83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
sub cl, 86
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 25
setns dil
jmp .bb_0.1
.bb_0.1:
bts dx, 80
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
cmovns rbx, rax
cmovb edx, edx
movsx ecx, dx
movzx edx, bx
adc dl, -12
mov dl, 89
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
