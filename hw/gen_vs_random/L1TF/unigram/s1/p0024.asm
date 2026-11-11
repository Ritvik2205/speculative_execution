.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 8
add al, al
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
test cl, 60
test al, -56
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
and bl, 89
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ecx
and al, dl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
