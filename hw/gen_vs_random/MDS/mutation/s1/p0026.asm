.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
or al, -22
cmovl di, cx
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
test dil, -51
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
btc dx, ax
or cl, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
