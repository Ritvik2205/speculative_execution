.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
movzx dx, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 28
cmp ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
add cl, -36
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
setnz dil
inc dil
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
