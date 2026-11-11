.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
cmovnbe cx, si
and sil, dl
test dl, -7
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
cmovnle edi, edx
sub sil, -18
lea cx, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 18
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
sub rdx, 63
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
add cl, -51 # instrumentation
cmovl ebx, esi
xor bl, -38
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
