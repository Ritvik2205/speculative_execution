.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
adc ax, -27488
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
cmp rsi, 53
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
test si, ax
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, rsi
mov dil, cl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmovnle rax, rbx
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
add al, 64 # instrumentation
cmovnz di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
