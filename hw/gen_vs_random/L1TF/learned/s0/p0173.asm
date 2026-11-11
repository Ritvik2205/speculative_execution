.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
mov edi, edx
lea di, qword ptr [rdi + rdi + 8878]
movsx ecx, cl
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
cmp dil, bl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
not cl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
lea edi, qword ptr [rax + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 47
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
