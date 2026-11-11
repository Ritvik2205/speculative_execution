.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 12
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
cmovnb rsi, rcx
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
xor si, -50
jmp .bb_0.1
.bb_0.1:
sub cl, 86
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
or rax, -443578116
xor al, al
sbb cl, cl
neg sil
add al, -122 # instrumentation
cmovnbe ebx, ebx
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
