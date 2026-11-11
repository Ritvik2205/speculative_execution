.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
sub edx, -63
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
xor bl, sil
add rdi, 60
cmovnbe rax, rdx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
cmovnp rsi, rdi
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
xchg dil, dl
cmovl eax, ebx
cwd
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
