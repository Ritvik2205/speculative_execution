.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, bl
sbb eax, 100
cmovs ebx, esi
or rsi, -119
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
add dl, -97 # instrumentation
sets cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
mul al
add bl, -118 # instrumentation
cmovp si, si
test rsi, rax
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
imul rax, rdi, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
