.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
or dil, -28
add si, 16
and rsi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
cmovs rax, rdx
adc dl, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
setnle al
bts eax, esi
not eax
cmovb esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
