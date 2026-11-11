.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 4
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
cmovnl rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
cmovb edi, edx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
or eax, -1827868798
btc rcx, 68
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
xor dl, -68
cmovp esi, esi
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 43
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
cmovp esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
