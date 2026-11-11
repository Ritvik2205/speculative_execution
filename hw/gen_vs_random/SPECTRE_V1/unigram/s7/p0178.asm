.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rbx + rdi + 52277]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
sub bx, 34
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
and bl, dl
lea rdi, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, cl
add sil, bl
lea rax, qword ptr [rax + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 18
bt rbx, 224
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
