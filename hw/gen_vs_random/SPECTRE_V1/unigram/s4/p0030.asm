.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edx, 24
xchg eax, esi
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and dx, 46
and bl, dl
cmovle rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rdi + rcx]
add dl, 58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
add bl, 2 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
test dil, -116
bswap rsi
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
btr rdi, 95
not edx
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
