.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, -128
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
bt edi, 134
add dx, -90
add dl, 40 # instrumentation
btc rdx, rdx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or rsi, -119
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
setp al
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
adc al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 16
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
