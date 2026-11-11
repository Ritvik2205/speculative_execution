.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
cmovle rdi, rcx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and dl, sil
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 25
sub sil, -18
movsx rdi, si
or al, cl
sbb di, -122
lea dx, qword ptr [rax + rcx]
add cl, -35 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
test cx, -17886
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
