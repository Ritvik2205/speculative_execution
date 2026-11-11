.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
cmp ebx, 72
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
add cl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
adc al, 58
add cl, -26 # instrumentation
cmovnp di, bx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 83
sub rax, 1451608022
or si, 0b1000000000000000 # instrumentation
bsf bx, si
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
lea rdi, qword ptr [rax + rdi + 89]
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
test ebx, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
