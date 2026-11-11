.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 19243
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
test bl, 106
cmovb edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
btc rsi, rbx
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
xor di, dx
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
or dl, cl
or sil, -8
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
or rax, -2043376621
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
