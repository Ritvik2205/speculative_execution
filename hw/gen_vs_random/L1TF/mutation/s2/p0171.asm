.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
add bl, 30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
add al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
add dl, al
btc rdx, 152
sbb ebx, -116
not si
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
not ecx
cmovb edi, ecx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
