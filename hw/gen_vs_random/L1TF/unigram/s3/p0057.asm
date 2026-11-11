.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, 33
lea rbx, qword ptr [rbx + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and cl, bl
add al, 74
test ecx, 29
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmp al, 56
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
bswap ecx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 24
or eax, 287965578
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
