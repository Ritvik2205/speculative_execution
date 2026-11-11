.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, -78
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
setz sil
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
add al, 64 # instrumentation
cmovnz si, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 86
cmovp ax, cx
add cl, 72 # instrumentation
adc cl, 64
test bx, di
not bx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc ax, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
