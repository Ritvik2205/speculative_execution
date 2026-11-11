.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
or di, 39
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
test cl, -86
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and bx, 73
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
btc dx, bx
cmovs bx, di
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or dil, -76
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and al, -68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
