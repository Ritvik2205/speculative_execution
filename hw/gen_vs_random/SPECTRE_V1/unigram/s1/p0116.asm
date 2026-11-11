.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
lea rsi, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -127 # instrumentation
movzx ebx, dl
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
or dil, -55
and al, bl
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 64
sbb dil, 35
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
test cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
