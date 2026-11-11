.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, rdx
mov al, cl
lea rax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
setnz cl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
add sil, sil
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
mul cx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
mul rbx
add bl, -95
bt ax, 58
sbb bl, al
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
