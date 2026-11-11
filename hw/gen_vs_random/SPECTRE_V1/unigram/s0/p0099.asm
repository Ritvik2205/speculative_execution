.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
btc bx, ax
btr rbx, 22
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 32
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
btr ebx, edi
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
add al, -44
add bl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
or bl, 31
movsx rdx, bx
sbb bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
