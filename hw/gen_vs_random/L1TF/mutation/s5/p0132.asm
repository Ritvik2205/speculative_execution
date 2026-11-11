.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
or rbx, 18
cwd
test ax, 22956
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and sil, -90
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
cmovp cx, ax
add dil, -7
not dx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
