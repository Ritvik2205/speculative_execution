.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 88
lea rbx, qword ptr [rbx + rsi]
test si, 30
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 65
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 78
sbb rbx, 59
cmovnb edi, eax
xor bl, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rdi + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
lea eax, qword ptr [rbx + rdx]
bt rsi, 52
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 78
inc ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
