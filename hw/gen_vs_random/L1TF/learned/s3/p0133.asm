.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
sbb eax, -1165635662
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
xor cl, bl
lea rcx, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle edx, ebx
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
movzx esi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
