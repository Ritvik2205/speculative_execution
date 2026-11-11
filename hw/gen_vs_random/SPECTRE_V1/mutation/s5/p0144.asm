.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
xchg al, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, -65 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], -38
cmp al, 46
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
jmp .bb_0.2
.bb_0.2:
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
cmovnle rbx, rdx
setno bl
bt ebx, 45
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
add dil, -75
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
