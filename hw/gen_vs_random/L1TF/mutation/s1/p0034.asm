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
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
btc rdi, 243
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
neg rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -8
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
cmovnp ecx, ebx
lea rbx, qword ptr [rbx + rdi + 3362]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
