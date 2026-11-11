.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb edx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
bt si, dx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and dil, 125
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
or di, 18
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
xor eax, 984871847
cmovz si, si
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
