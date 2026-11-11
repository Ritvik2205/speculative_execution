.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
setnb cl
xchg rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
xor sil, -33
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
lea ebx, qword ptr [rdx + rdx + 46587]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
setns cl
sbb al, 118
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
lea rcx, qword ptr [rcx + rdx]
lea rdx, qword ptr [rcx + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
add al, 13 # instrumentation
cmovno rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
xchg rbx, rsi
cmp cx, 88
cdq
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
