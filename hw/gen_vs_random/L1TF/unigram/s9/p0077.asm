.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
cmp dil, dil
inc rdx
add bl, dil
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 88
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
adc al, sil
jmp .bb_0.1
.bb_0.1:
test esi, 40
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
xor dl, 9
cmp edi, ebx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
cmp cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
