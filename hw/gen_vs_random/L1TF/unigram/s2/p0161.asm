.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp di, -78
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
xchg edi, esi
cmovnbe rbx, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
test al, -84
bts edx, edi
mov ebx, 675401645
mov bl, al
add al, dil
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
