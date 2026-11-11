.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, dil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 91
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
sub dl, dil
imul rbx, rsi, 92
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
imul al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
add dl, 47
or eax, -126
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rdi + rsi + 6]
add cl, 44 # instrumentation
cmovz esi, ebx
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
