.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ebx, 8
cmovnb rcx, rbx
cmovle ax, dx
mov dil, dl
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
or eax, -1161451853
sub si, 32
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 100
test dil, -116
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 4
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
lea cx, qword ptr [rdi + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
