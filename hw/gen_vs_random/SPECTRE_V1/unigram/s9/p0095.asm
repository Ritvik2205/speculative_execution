.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -121 # instrumentation
setno dl
setle bl
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 71
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], esi
or eax, edx
or al, sil
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 126 # instrumentation
cmovnl bx, di
sub dil, -111
xor al, bl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
xor bx, bx
bswap rdi
not di
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
