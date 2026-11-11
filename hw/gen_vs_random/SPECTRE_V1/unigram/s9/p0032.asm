.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
adc edi, 7
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and al, al
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
or al, 100
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
not ebx
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
sbb si, 78
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rsi
xor ecx, eax
xor cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
