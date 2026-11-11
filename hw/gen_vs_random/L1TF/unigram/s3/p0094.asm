.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, 13
bt edi, 230
cmovb edx, ebx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
lea esi, qword ptr [rbx + rdx + 18]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and eax, ecx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
