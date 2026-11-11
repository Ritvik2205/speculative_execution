.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx + rdx + 46587]
xor sil, -33
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -71
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
test al, sil
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
setnb cl
xchg rbx, rax
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
setns cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
lea rdx, qword ptr [rcx + rcx]
lea rcx, qword ptr [rcx + rdx]
sbb al, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
