.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
dec dl
cmovns rax, rsi
xor eax, 1034314125
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
xor eax, -764881786
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
cmovnb bx, dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 66
cmovnl ecx, ebx
xor rax, 1636804787
not eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
