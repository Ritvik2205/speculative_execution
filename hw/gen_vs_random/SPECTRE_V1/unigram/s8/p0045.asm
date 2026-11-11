.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 67
bt eax, ecx
adc dx, di
neg rbx
add cl, 46 # instrumentation
sbb rax, -91
mov sil, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
lea cx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], 69
lea esi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
