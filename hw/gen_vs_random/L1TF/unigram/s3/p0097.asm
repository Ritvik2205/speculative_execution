.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 8
lea rcx, qword ptr [rbx + rax]
add al, 27 # instrumentation
sbb eax, edi
and sil, cl
add sil, sil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
lea di, qword ptr [rax]
add eax, 760523556
bt rbx, rax
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
not bl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
