.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, bl
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
cmovb edi, ecx
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
not ecx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
add dl, al
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
add bl, 30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
not si
sbb ebx, -116
btc rdx, 152
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
