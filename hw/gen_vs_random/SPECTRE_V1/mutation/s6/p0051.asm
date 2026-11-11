.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, bl
or rsi, -14
cmovs ebx, esi
add dl, -97 # instrumentation
sets cl
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
sbb eax, -417098439
jl .bb_0.1
jmp .exit_0
.bb_0.1:
test rsi, rax
mul al
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
add bl, -118 # instrumentation
cmovp si, si
imul rax, rdi, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
