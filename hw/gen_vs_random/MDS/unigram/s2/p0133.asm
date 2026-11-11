.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
xor dl, cl
btr edi, eax
xor rdx, rdx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or rdx, -48
and rdx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdx]
btr eax, edx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
test cl, 54
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
