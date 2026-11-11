.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
cmovnle di, cx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rbx, rbx
sub dl, al
xor eax, -1721938664
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, -68
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
lea edi, qword ptr [rdi + rdi + 44205]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
movzx si, cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
or sil, 34
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
cmp dil, -78
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
