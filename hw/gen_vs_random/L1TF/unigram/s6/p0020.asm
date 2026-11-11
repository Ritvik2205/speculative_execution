.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 1
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 24
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
neg ebx
add al, dil
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 49
jmp .bb_0.1
.bb_0.1:
sub ax, si
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 48
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
lea esi, qword ptr [rbx + rax + 7]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
