.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
setp al
xor al, 38
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
add al, -117 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
add bl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
cdq
movsx edx, al
jmp .bb_0.1
.bb_0.1:
add cl, 6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
adc sil, 95
movzx esi, bl
sbb rsi, 40
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
