.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
adc cl, cl
add bl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
mov edx, esi
setnb dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
cwd
lea di, qword ptr [rsi + rax + 63231]
sub dl, cl
lea esi, qword ptr [rsi]
movsx rax, si
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
mov bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
