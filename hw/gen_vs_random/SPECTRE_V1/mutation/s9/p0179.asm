.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
cmp rax, 900122030
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
cmp ebx, -33
add bl, -64 # instrumentation
cmovnle esi, edi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
cmovp rcx, rdx
add bl, 88 # instrumentation
sbb bl, 7
btr rcx, 158
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
imul al
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmovle rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
