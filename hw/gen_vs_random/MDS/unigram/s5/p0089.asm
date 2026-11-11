.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
cmovnle rdx, rsi
or al, 25
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
or al, dl
cmovnbe rax, rax
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 6
cmovo eax, edx
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and cl, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and cl, -19
cmovbe si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
