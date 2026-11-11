.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
add al, -46
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
xor rcx, rbx
setno al
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rax]
sub dl, al
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
add al, -103 # instrumentation
cmovnz ax, dx
xor esi, 67
cmovs dx, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
cmovnz ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
