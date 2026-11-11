.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
mov edx, -377652802
sub al, 26
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 88
add dl, -70
sub al, -47
lea rbx, qword ptr [rdi + rdx + 42]
add bl, al
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
cmovs ax, dx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
