.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmp al, cl
lea eax, qword ptr [rsi + rdi + 31594]
test cl, -31
sbb ax, -206
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
sub rax, -679751639
lea dx, qword ptr [rbx]
dec rax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
sbb rax, 1380680934
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
setbe sil
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
test cl, -31
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
