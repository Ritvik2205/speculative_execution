.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 8
cmovbe rsi, rcx
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 13
xchg rax, rdx
sbb cl, bl
test rax, -1704969603
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
cmp dl, al
sbb edx, 46
setnle dil
sbb cl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
