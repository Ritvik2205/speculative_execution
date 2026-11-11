.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and cl, dl
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
xor dx, 57
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 57
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
movsx edx, al
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
cmp eax, 123533400
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
dec al
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
