.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -103 # instrumentation
cmovnz si, ax
cmovnb edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 94
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
sub rax, -1628299544
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and al, -68
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], si
or rax, 699028911
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
setnb dil
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
