.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 60 # instrumentation
cmovno edi, edi
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
cmovp rdi, rdx
cmovle ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 29
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
or sil, -8
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test rbx, 96
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
xor ecx, ecx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 90
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
