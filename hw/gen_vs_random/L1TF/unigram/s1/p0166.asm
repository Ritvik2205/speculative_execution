.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo esi, edi
lea si, qword ptr [rsi + rsi + 18]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
xor dil, 2
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 22
cmovb edx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
lea ax, qword ptr [rcx + rsi + 16]
and rax, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 72
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
lea si, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
movsx cx, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
