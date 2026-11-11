.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
not ecx
sbb ebx, 9
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
cmovb edi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
not si
add dl, al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
add al, bl
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
btc rdx, 152
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
