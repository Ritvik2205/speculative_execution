.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
cmovp cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
not dx
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
test ax, 7679
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
add dil, -7
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and sil, 37
or rbx, 18
cwd
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
