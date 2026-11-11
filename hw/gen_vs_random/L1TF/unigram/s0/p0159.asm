.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
cmp bl, cl
cmovo eax, edi
lea edx, qword ptr [rdx]
imul cl
or al, al
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
mov eax, ecx
adc al, -3
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
lea rdi, qword ptr [rsi + rax]
cmovp ebx, ecx
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
