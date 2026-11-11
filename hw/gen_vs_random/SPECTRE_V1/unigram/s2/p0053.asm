.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
test dx, 48
lea ax, qword ptr [rcx + rdx + 80]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
imul dl
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 31
lea edx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
add edi, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
