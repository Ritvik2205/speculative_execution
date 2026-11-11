.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 67
and rbx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 26
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rax
cdq
lea esi, qword ptr [rdx + rdi + 78]
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 12
btc rbx, 38
add cl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
