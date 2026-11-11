.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
or dil, sil
xor dl, cl
or eax, 848176907
not dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
add esi, 76
test cl, -24
lea rbx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
