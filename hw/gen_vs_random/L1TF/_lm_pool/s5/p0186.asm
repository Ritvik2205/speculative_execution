.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and dl, sil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
or dil, -113
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
