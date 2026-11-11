.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 83
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
adc dil, cl
or rcx, 30
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
add bl, 89 # instrumentation
sbb sil, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
imul dx, si, 90
xor cx, 113
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
