.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 11
setb al
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 90
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
mov dil, al
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
sbb cx, cx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 24
and bl, 89
mov al, -101
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
inc rbx
movsx rbx, cl
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
