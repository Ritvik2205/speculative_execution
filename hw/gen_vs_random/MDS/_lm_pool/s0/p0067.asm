.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
xor cl, 98
xor bl, -27
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
test sil, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and cl, al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
or bl, bl
xor bl, cl
and esi, 12
xor sil, 27
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
xor al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
