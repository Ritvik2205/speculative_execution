.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg sil, sil
btc ecx, 85
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
sbb al, dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
test rcx, -1420345926
lea si, qword ptr [rsi + rdx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 20
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sub rdx, rdx
xor sil, -33
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
