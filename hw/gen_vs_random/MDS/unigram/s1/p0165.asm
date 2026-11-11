.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 561041355
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
btr rdx, 74
or dil, 16
cmovl si, ax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
btr rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 71
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 85
or rsi, 52
btc bx, ax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], esi
cmovle rdi, rdi
bt ax, bx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
cmovle di, si
xor al, 99
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
