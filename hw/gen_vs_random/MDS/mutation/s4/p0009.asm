.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
xor ax, -16696
cmovnle rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 1886208862
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
cmovns di, bx
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
test dil, -80
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
btc dx, ax
or cl, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
