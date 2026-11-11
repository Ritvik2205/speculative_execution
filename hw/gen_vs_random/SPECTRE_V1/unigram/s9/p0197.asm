.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 8
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
cmovnz dx, bx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 931150336
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rcx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, -77
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 50
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
lea ax, qword ptr [rdx + rdi + 55]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
