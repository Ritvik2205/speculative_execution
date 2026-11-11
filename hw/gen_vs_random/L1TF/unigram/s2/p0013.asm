.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
mul rax
movzx eax, ax
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
add rdi, 48
lea eax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
imul dx, cx, 66
or sil, dl
cmovnz si, ax
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
xor di, bx
sub dl, -78
xor ecx, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
