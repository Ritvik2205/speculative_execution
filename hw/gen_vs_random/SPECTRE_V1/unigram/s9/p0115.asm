.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz esi, ebx
adc dl, dil
or rbx, 5
xor dil, cl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 76
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
mul cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 93
add cl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
add dl, 121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
