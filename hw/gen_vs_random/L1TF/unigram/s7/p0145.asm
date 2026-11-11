.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
sbb bl, sil
sub eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
add cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
add al, -110 # instrumentation
btr ax, 40
inc rax
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
bt ax, 205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
