.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
add bl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
add bl, 91
add dl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
sub dl, cl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 46
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
