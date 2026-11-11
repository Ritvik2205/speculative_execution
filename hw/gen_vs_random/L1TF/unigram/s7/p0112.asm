.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg di, si
lea di, qword ptr [rbx + rdi + 99]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
sbb cx, si
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 65
setz sil
dec ebx
add cl, 107 # instrumentation
cmovnl si, si
add al, -65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
setz sil
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 85
add al, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
