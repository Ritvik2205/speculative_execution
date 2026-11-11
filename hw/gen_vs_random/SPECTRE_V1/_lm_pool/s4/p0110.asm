.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
mov bl, sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp si, -11
test al, 48
cmp rax, 900122030
or rdx, 92
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or esi, -74
sbb cl, bl
adc al, -82
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
