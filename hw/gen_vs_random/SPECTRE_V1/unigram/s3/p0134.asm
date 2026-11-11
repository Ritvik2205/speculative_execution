.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
add al, dil
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
add dl, -96 # instrumentation
cmovo edi, edi
sbb esi, 51
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], ax
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
sub rcx, rax
lea rdx, qword ptr [rdx + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
add bl, -12 # instrumentation
lea rsi, qword ptr [rbx + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
