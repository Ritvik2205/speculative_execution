.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
or dl, bl
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 80
xor bl, cl
bt rdi, 18
adc bl, 86
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
lea edx, qword ptr [rbx]
dec esi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
cmovnp rdi, rbx
sbb rdx, 98
bt rdi, rdx
cmovz rsi, rdi
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
