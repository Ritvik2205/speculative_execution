.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdi
sbb edx, 105
cmovp ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 41
xchg al, dl
setns dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
mul rcx
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
