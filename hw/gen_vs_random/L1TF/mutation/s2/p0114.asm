.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, 19828
dec bl
btr esi, 174
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
bt dx, cx
add cl, bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
add bl, 84 # instrumentation
btc bx, bx
xor dl, -91
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
setbe cl
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
