.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 100
xor sil, 77
not cl
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
sbb al, dl
jmp .bb_0.1
.bb_0.1:
or dl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
add cl, -110 # instrumentation
setbe cl
btc rdi, rsi
add al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 9
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
add ax, bx
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
mov cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
