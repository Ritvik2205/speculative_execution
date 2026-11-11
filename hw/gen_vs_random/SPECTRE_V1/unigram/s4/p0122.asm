.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
cmp cl, cl
xor rbx, 7
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 51
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 10
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 73
adc rsi, 49
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
btr rbx, 132
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
