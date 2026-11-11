.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
mov edi, edx
lea di, qword ptr [rdi + rdi + 8878]
movsx ecx, cl
xor ax, -27503
adc al, cl
dec bl
btc rdi, 243
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
cmp dil, bl
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and di, dx
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
