.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
lea rcx, qword ptr [rax]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 24
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
add dl, 43 # instrumentation
adc dl, dl
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
mov bx, dx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
cmovnl cx, si
mov rdi, -5671708760962025403
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
