.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle esi, edi
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
cmp rax, -72548874
cmp ebx, -33
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 88 # instrumentation
sbb bl, 7
cmovp rcx, rdx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmovle rsi, rcx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
add dl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
imul al
btr rcx, 158
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
xor rbx, rcx
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
cmovno rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
cmovo di, bx
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
