.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 52
lea dx, qword ptr [rsi + rdi + 92]
add al, -94 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 99
and rdx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdx]
cmp al, dil
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
inc bl
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
add dil, bl
add ebx, 76
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edi
lea di, qword ptr [rbx + rdi]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
