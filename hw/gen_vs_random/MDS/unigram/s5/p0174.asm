.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
or di, 49
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
cmovp eax, esi
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
cmovl edi, eax
cmovo di, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 49
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
cmovp rdi, rbx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 33
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 21
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
