.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
setno dil
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
btc ebx, 11
and dl, -49
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
btc di, di
jmp .bb_0.1
.bb_0.1:
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
add dil, -7
and sil, 93
cwd
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
test ax, 13284
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
or rbx, 18
cmovp cx, ax
not dx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
