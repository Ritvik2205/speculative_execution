.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
or sil, dil
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
cmovo esi, edi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 12
jmp .bb_0.1
.bb_0.1:
bt ebx, 80
and si, -121
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 92
test cl, -86
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovl rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
