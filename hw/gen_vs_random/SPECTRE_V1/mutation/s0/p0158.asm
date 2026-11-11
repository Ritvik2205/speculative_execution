.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -120
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 52
and rax, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
sbb dil, cl
setns cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -101
jmp .bb_0.2
.bb_0.2:
add al, -8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], -84
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
xor al, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
cmp rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
