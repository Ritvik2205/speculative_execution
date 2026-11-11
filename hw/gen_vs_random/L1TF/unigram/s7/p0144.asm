.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
add al, -117 # instrumentation
setp bl
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
cmp sil, sil
btc edx, ecx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
mov al, cl
xchg di, bx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
cmovb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
