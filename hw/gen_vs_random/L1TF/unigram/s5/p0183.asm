.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
btr edx, 7
test si, 15
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
lea edx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
xor bl, 38
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
