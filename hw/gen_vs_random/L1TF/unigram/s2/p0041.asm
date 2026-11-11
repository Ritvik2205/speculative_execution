.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdi, rsi
adc cl, -34
add bl, -77 # instrumentation
cmovns bx, cx
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
add rsi, 85
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
imul sil
add ax, ax
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 88
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
or ecx, 17
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
