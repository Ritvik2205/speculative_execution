.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt bx, 27
cmovnb bx, si
or sil, dl
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
lea rdi, qword ptr [rbx + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
lea ax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
add dl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 50
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 6
movsx di, dil
sub bl, cl
cmovo ebx, ebx
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
