.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
lea si, qword ptr [rbx + rax + 100]
setl cl
sub bl, dl
cmovnb rax, rbx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 78
lea ax, qword ptr [rdi + rcx + 3]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
add bl, -46 # instrumentation
cmovbe rbx, rcx
sub dl, bl
cmp bx, 38
test dil, cl
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
