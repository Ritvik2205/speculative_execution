.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rsi]
mul cl
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
xor rdi, rbx
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
adc ax, -27488
add al, 107 # instrumentation
lea edi, qword ptr [rbx + rax + 30]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
