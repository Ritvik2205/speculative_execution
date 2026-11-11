.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
movzx edx, di
bswap rdi
add al, 107 # instrumentation
lea ebx, qword ptr [rsi + rdi + 74]
sub rax, -1628299544
xchg dl, cl
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
mov bl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 63
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
lea edx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
