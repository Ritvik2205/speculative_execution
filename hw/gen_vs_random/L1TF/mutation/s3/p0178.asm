.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rsi + rdx]
xor cl, cl
lea ax, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
or bl, 114
cmp al, -119
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
lea ebx, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
add cl, dl
sub al, dl
sub dl, 41
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
add dil, 88
and sil, 37
cwd
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
test ax, 13879
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
