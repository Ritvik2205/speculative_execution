.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 56
or rax, -285849275
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
bts si, di
bts di, 91
test cl, dl
xor eax, 73
or cl, cl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
jmp .bb_0.1
.bb_0.1:
or rcx, 56
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
bt rbx, rax
and al, 73
cmovnbe edi, esi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 34
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovns ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
