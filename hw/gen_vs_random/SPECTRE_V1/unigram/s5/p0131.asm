.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, -1846965753
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
lea rdx, qword ptr [rbx + rbx + 59]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
or bl, dl
cmovnl ebx, edx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, al
add al, -53 # instrumentation
sbb dil, dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
add sil, -68
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
