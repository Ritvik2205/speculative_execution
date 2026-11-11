.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx
movsx rdx, si
sub bx, 72
xor rcx, 74
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
add bl, 40 # instrumentation
btc rbx, rbx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
sub dl, -48
mov esi, ebx
not rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
