.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and bl, 120 # instrumentation
cmovnp cx, si
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
cmovbe si, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
xor al, 9
bts rcx, rdi
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
