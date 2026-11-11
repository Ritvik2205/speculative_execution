.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
btr esi, 174
bt dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
xor dl, -91
dec bl
sub ax, -12040
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
setbe cl
add cl, bl
add bl, 84 # instrumentation
btc bx, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
