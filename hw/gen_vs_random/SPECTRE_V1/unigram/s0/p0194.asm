.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
add dl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
sub sil, cl
movsx esi, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and sil, 11
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
bswap edi
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
add al, 19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
