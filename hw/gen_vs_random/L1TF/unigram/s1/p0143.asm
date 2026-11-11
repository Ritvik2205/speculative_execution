.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
sbb dl, cl
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
movzx ecx, si
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov dl, dl
lea rsi, qword ptr [rbx]
mov rcx, 72
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
xor sil, sil
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
add al, -112 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
