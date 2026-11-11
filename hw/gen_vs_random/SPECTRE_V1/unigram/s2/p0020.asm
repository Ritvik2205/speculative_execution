.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub si, ax
mul cl
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
imul rcx, rdi
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
add sil, -127 # instrumentation
movzx esi, dil
cmovnbe dx, dx
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
mov cl, dl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
bts rdi, rdx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 21
or bl, 25
lea bx, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 100
add dil, -6 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
