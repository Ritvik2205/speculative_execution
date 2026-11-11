.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, si
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
nop
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
cmovl ax, di
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
movzx edi, di
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add bl, 111 # instrumentation
cmovs rdx, rdx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
lea ebx, qword ptr [rdi + rbx + 24078]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
lea rcx, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
