.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rbx + rax + 46]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ebx
and cl, sil
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
adc sil, al
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
dec bl
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, dil
movsx ax, dil
sub dl, -29
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
adc dil, 29
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
cmovno ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
