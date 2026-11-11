.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
cmp ebx, -33
cmp rax, 900122030
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
add bl, -64 # instrumentation
cmovnle esi, edi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
btr rcx, 158
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
add bl, 88 # instrumentation
sbb bl, 7
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
imul al
cmovp rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
add dl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
cmovle rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
