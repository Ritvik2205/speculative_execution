.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 61
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rsi
cmp dil, dil
test eax, 1561062795
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 37
cmp al, 19
cmovnz di, cx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
sub ax, 24441
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
adc rcx, rdx
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
xor al, 102
add bl, bl
cmovle eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
