.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
lea cx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
add al, -53 # instrumentation
sbb bl, dl
add al, 64 # instrumentation
cmovnz ax, dx
sub si, 32
test al, dil
and ax, 25351
sub dl, dil
setl al
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
