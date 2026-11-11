.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
add dil, 16
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add al, 5
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
movsx di, dil
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
xor dl, al
cmp ax, 23131
cmovo di, di
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
cmovnp rbx, rsi
add bl, bl
test rdx, 90
cmovz eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
