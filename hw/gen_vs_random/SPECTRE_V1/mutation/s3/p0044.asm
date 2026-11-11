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
test dword ptr [r14 + rbx], -770247768
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
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
adc esi, -66
add bl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdx, -98
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
