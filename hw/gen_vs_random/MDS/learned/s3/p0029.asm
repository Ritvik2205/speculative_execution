.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovnle ecx, esi
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
cmovnb bx, bx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmovp esi, esi
cmovs edx, edx
or ax, -17790
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
add dl, 100 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
or bl, dil
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
cmovns edi, edi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
