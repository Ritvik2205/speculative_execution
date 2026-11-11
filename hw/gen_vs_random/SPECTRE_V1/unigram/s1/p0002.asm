.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
inc eax
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
or cl, -98
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
add bl, 78 # instrumentation
adc di, 30
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add al, -72
test rcx, -1420345926
or ax, ax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 34
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
