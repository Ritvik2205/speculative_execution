.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
xchg al, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -65 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], -38
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add cl, -119 # instrumentation
adc dl, bl
cmovl rdx, rdx
and sil, 111
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
cmp al, 23
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
