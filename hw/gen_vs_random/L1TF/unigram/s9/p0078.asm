.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
xor sil, sil
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 86
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
cwde
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 19
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
