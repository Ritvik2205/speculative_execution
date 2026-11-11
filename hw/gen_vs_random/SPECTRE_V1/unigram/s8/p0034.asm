.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cx, 88
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
sub ebx, 75
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
btc ax, 37
btc ax, dx
test al, 40
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
add cl, -123 # instrumentation
cmovnp rcx, rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb si, bx
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
