.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 10
or al, cl
cmovle esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
xor dl, -125
or dl, 22
jmp .bb_0.1
.bb_0.1:
or sil, -8
bts rcx, 115
cmovno edi, eax
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
or dl, dil
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor al, -28
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
