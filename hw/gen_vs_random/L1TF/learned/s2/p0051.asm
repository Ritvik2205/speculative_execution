.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
xor rdi, rdi
cmovp edx, ebx
lea bx, qword ptr [rax + rdi]
xchg eax, edi
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
add bl, -19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
dec dl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add dil, 44
lea si, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnb rdi, rdi
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
add bl, sil
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
cmovs edx, esi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 28
cmovbe rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
