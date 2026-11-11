.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
bswap rbx
lea eax, qword ptr [rdi]
and ebx, 73
not eax
xor dl, sil
or al, sil
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
cmp dx, 62
lea dx, qword ptr [rdi]
test rax, -991273825
cmovbe eax, ecx
cmovnb rsi, rsi
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
sbb al, cl
lea rax, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
