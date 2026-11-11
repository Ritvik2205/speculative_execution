.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
sub dl, 71
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
sets cl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mov edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 35
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
or bl, bl
imul ax, dx, 25
movzx edx, dx
cmovnz cx, bx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
