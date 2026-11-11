.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add bl, -37 # instrumentation
dec dl
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
jmp .bb_0.1
.bb_0.1:
sbb cl, -11
cmovns si, di
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or rax, rdi
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
setb cl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
seto sil
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
