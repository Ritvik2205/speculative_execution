.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp si, bx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 82
inc sil
cmovl edi, esi
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
test sil, 97
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 43
lea ebx, qword ptr [rdx + rdx + 46587]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 95
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
bts ax, 65
btr si, 80
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
