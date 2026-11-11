.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
xor dl, cl
xor rcx, 71
test dil, dl
cmovl edi, eax
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and cl, -53 # instrumentation
cmovbe eax, ecx
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and dl, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
or cl, 30
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
and dl, 37 # instrumentation
cmovnbe cx, bx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
