.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -97 # instrumentation
sets cl
or rsi, -14
cmovs ebx, esi
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
sbb eax, 1392087754
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -118 # instrumentation
cmovp si, si
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
imul rax, rdi, 109
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
mul al
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
