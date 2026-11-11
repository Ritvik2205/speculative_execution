.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
sbb ebx, 9
cmovb edi, ecx
btc rdx, 152
not ecx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
add dl, al
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
add al, bl
not si
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx + rdi + 62995]
bts rsi, rdx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
adc al, -103
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
not eax
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
