.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edi, ecx
cmovp rax, rbx
cmovb esi, eax
mov si, 57
test bl, sil
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 9
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx + rsi + 50]
neg dl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
add cl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
