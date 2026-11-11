.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
bt eax, esi
and dil, 125
cmovnbe dx, si
and cx, -2
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 30
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 46
and bl, 68
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
bt cx, 22
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
or al, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and bl, 3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
not cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
