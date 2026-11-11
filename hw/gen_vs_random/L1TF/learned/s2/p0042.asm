.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
sub sil, -87
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
inc edx
cmovb eax, eax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], di
add cl, al
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
adc esi, 62
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
lea di, qword ptr [rdx]
xor edx, 101
sbb eax, eax
cmovo dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
