.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
inc rbx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
add al, 19 # instrumentation
setnz dl
or rax, -3
neg di
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
sub bl, dl
cmp ebx, -33
adc esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
