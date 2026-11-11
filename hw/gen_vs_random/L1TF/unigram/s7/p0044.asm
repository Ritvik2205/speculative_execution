.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 36
bt rdi, rdx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
cmovs esi, edx
jmp .bb_0.1
.bb_0.1:
cwde
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
add al, -65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
lea rdx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
