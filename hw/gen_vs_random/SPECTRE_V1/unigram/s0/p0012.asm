.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
add dl, -4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 72
lea rdi, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
mov ebx, edx
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
lea rcx, qword ptr [rax + rax + 83]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp esi, 3
test dl, -105
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
add al, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
