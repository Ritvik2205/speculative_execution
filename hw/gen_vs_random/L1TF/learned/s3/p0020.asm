.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, 1167476476
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
cmp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 81
lea ebx, qword ptr [rbx + rdx + 53812]
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdx + rdi]
or dl, al
sub bl, 66
sub dl, bl
add dil, al
and rdi, -60
sub di, 10
xor al, 14
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
