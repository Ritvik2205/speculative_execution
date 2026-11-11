.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -1265007362
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
lea edx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
btr rbx, rbx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
sub rax, 1451608022
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add cl, 39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
lea ebx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
sbb rax, 1380680934
bt cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
