.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
sbb cl, dl
setp al
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
not edx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and cl, al
adc al, -82
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
jmp .bb_0.2
.bb_0.2:
add dl, -65 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], -38
cmp al, 13
and sil, 11
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
cmovl rdx, rdx
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdi]
add cl, -119 # instrumentation
adc dl, bl
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
