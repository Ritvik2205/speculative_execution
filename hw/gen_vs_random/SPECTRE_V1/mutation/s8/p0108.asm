.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, -33
cmp rax, 1189904463
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
add bl, -64 # instrumentation
cmovnle esi, edi
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
add dl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmovp rcx, rdx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
add bl, 88 # instrumentation
sbb bl, 7
imul al
cmovle rsi, rcx
btr rcx, 195
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
