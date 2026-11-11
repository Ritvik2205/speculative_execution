.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdi, rax
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
add cl, 89 # instrumentation
adc al, sil
cmovno eax, eax
setno al
sbb edx, edx
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
or eax, esi
add al, cl
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
sbb edx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
