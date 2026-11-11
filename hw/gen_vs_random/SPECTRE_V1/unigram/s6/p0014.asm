.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not di
adc al, -92
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
add al, 3
add al, 64 # instrumentation
cmovnz ax, cx
imul rcx, rbx, 71
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, -106
not eax
cmp bl, -114
mul dl
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 82
btr rax, rdx
add cl, 32 # instrumentation
cmovnbe rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
