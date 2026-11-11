.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmp dil, dil
xor al, 77
bts eax, esi
cmovnb di, ax
btr rsi, 73
xor al, -28
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
cmovb si, di
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
bts rax, 117
or dl, dil
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
xor al, -28
btc esi, 226
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
xor cx, si
adc bx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
