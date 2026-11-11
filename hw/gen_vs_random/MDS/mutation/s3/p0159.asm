.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 37 # instrumentation
cmovnbe si, ax
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
btc bx, di
test ax, 6113
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
test eax, -409834435
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
or bl, 43
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
btc si, 43
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
test dil, 46
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
btc dx, ax
or cl, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
