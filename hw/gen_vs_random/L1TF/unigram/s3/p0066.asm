.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 44
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
add bl, 111 # instrumentation
cmovs rsi, rsi
cmp eax, -234754587
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
lea si, qword ptr [rdi + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
cmovnz esi, ecx
jmp .bb_0.1
.bb_0.1:
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
inc rdi
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
