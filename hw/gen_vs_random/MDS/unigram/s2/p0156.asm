.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 41
and si, bx
or bl, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and edi, 74
or di, -18
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 2
and dl, -33 # instrumentation
cmovns rax, rax
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
or cl, 100
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
xor bl, 2
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
xor esi, 14
test cl, dl
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
