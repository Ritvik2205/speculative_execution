.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
btr di, 199
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or eax, -1827868798
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 18
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 31
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
bts rax, 149
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
cmovp rbx, rax
mul rbx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
cmovp esi, ebx
or rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
