.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle bl
btr edi, edx
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
xor bl, -38
add dil, 72
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], ax
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
add cl, -93 # instrumentation
not rcx
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
bt bx, bx
adc si, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
