.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rsi + rdx]
add dl, dl
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
add bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
lea ax, qword ptr [rbx + rdi + 22]
xor sil, -33
movzx dx, al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
lea edx, qword ptr [rdi + rdi]
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
