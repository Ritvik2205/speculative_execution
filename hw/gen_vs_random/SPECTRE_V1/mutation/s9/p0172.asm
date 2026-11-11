.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
adc sil, sil
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
movzx cx, bl
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
adc esi, -66
add bl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdx, -98
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test sil, 47
add di, 44
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
dec dl
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
mov cx, 31310
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
sub rcx, 13
test al, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
