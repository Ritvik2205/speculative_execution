.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
lea rbx, qword ptr [rdi + rbx + 14]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
imul di, cx
lea ebx, qword ptr [rbx + rdi]
jmp .bb_0.1
.bb_0.1:
add dil, 30 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
add al, 112 # instrumentation
cmovnle edx, esi
add al, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
and ecx, 91
cmovnp rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
