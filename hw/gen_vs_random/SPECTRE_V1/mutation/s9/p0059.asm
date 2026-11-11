.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
mov edx, esi
setnb dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
setz dl
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
cwd
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
lea di, qword ptr [rsi + rax + 63231]
sub dl, cl
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
lea esi, qword ptr [rsi]
mov bl, bl
movsx rax, si
jmp .bb_0.2
.bb_0.2:
btr ax, 197
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
add al, dl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
imul dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
