.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
imul dl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
btc si, ax
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 0 # instrumentation
adc al, bl
cmovnl edi, ebx
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 49
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], sil
xor dil, al
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 42
setbe bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
