.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ecx
add esi, 22
add bl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
movsx si, dil
add dl, 47
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
imul esi
imul rdx, rax, 21
and rbx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
lea ecx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
