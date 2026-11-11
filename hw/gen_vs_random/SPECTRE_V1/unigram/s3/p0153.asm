.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc esi
cmp al, 46
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
sbb dil, dl
cmovs dx, bx
cmovnle esi, edx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
setp cl
and dl, -92
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
xor dl, al
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
btc edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
