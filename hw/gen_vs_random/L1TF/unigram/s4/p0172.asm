.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
btc eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], edx
nop
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
cmovnb rbx, rcx
and dl, cl
add al, 118 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 95
sbb dl, 63
mov eax, esi
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
add rax, rdi
and edi, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
