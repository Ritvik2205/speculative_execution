.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cx, dx
imul bx, di, -32
cmovle esi, ebx
sub dil, bl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
add cl, -36 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
setp al
jmp .bb_0.1
.bb_0.1:
sub edi, 56
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
inc edx
lea eax, qword ptr [rdi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
