.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, si
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
bswap eax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
cmp dl, dl
mov al, dil
bts rax, rdi
sub cl, dil
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
cwde
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
or eax, -62
cmovo ecx, ebx
movzx ecx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
