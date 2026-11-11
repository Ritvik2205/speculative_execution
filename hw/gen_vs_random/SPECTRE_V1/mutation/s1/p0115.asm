.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
add dl, -97 # instrumentation
sets cl
or rsi, -119
sub dl, bl
sbb eax, 1392087754
cmovs ebx, esi
jl .bb_0.1
jmp .exit_0
.bb_0.1:
mul al
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
imul rax, rdi, 109
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
add bl, -118 # instrumentation
cmovp si, si
test rsi, rax
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
