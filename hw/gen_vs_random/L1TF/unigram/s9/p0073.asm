.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], -62
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
not rdi
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 89
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
seto dl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 74
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
