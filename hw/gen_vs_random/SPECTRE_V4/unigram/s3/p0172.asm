.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb eax, edi
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
bts cx, 135
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
cmovo ecx, edi
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
dec rdx
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
adc dl, 11
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
sub cx, -114
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
add dil, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
inc sil
cmovl ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
or dl, -26
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
sbb al, -43
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
cmovz rax, rdi
sub cx, ax
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 85
cmovle rbx, rsi
bt cx, dx
movzx ax, dil
xchg rax, rax
sub ax, 25338
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and al, cl
sbb di, -105
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 12
adc edi, -83
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
sub rbx, rdi
xor rbx, -99
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or rdi, -41
adc ecx, 114
btr rax, 187
cmovl rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
