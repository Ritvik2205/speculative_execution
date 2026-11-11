.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
dec bl
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
add cl, bl
bt dx, cx
btr esi, 174
xor dl, -82
sub ax, 19828
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
add bl, 84 # instrumentation
btc bx, bx
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
setbe cl
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
