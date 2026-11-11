.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, -77
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
cmovo rdx, rbx
btr si, di
btc rdi, rdi
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
btr di, ax
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
xor bl, al
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
xor bl, sil
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
