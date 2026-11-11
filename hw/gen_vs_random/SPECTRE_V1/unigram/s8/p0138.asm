.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -13
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
test al, -71
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], si
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -88
and rsi, rdx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 98
add cl, -95 # instrumentation
lea cx, qword ptr [rbx + rbx + 88]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 74
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 39
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
bts edx, 177
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
