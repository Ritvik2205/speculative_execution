.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 7
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
bt dx, 39
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 58
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
bt ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
bt di, dx
cmovp edi, edi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 56
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 18
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
