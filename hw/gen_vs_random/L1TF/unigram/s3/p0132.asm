.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmovbe rsi, rdi
dec al
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
add cl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
bswap ecx
bt rcx, rdi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
