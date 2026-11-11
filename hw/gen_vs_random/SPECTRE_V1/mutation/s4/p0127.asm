.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle esi, edi
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
cmp rax, -1365488374
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
btr rcx, 131
jmp .bb_0.2
.bb_0.2:
and dl, cl
lea ecx, qword ptr [rbx + rcx + 13259]
add al, bl
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], eax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
lea ebx, qword ptr [rax + rax + 18654]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or rdx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
