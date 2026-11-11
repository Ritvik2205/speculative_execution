.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp bl
add cl, 42 # instrumentation
lea edi, qword ptr [rcx + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
add cl, -33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
setnl cl
add al, -113 # instrumentation
mov rax, 99
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
xor bx, 78
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
add sil, -61
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
