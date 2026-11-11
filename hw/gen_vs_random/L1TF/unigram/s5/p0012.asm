.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
mov cl, al
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
sub sil, dil
neg bx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], edx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
mul rdi
lea rdi, qword ptr [rdx + rdi + 11]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
cmovnz eax, edi
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
lea rcx, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
