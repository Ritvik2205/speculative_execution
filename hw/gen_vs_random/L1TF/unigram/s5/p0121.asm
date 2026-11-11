.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
btc esi, 73
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
sub rax, -2089384489
and sil, sil
and esi, ebx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
cwd
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
cmovb dx, si
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 66
btr eax, 47
inc al
setb bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
