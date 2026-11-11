.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
btr si, cx
bt ebx, edx
sbb sil, 19
and ax, 26813
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
lea eax, qword ptr [rbx + rbx + 5]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rdx + rax + 27]
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
sub dl, 41
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
not di
lea rdi, qword ptr [rsi + rcx]
add ax, -10746
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
