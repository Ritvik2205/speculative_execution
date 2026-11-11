.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rbx + rdi]
and dil, bl
xor rdx, rax
adc dil, 90
bt ebx, edx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
setb al
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
add dl, -84 # instrumentation
lea edx, qword ptr [rcx + rcx + 95]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
dec rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
