.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
add bl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
adc cl, cl
mov edx, esi
setz dl
setnb dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
cwd
lea di, qword ptr [rsi + rax + 63231]
sub dl, cl
movsx rax, si
lea esi, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
