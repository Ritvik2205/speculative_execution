.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 33 # instrumentation
setnz dl
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
btc ecx, ecx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
mov al, -28
btc rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
sub al, -89
imul edi
add bl, -101 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
movsx edx, dx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 52
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
imul eax, eax, 70
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
add al, -53 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
