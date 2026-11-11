.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and dx, 86
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor al, 89
add bl, 115 # instrumentation
setz bl
cwde
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
mov dl, dil
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
cmovnle rsi, rsi
or sil, cl
cmovnb edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
