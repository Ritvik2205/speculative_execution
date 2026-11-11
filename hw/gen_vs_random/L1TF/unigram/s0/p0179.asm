.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, -126
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
sbb si, 78
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 22
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 84
sbb ecx, 54
lea cx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 68
btc edi, edi
lea rbx, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
