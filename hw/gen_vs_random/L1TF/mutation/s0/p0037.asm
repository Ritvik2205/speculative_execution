.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
not dx
test ax, 13284
add dil, -7
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
cwd
and sil, 93
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
cmovp cx, ax
or rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
