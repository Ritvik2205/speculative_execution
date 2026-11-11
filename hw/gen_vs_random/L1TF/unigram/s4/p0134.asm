.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ecx
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
cmovp rax, rsi
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
cmp sil, al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
setnle cl
bt rbx, rcx
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
lea rcx, qword ptr [rax]
btr ecx, 9
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
