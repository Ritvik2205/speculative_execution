.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 95
mov cl, cl
sbb bx, 30
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 23
lea di, qword ptr [rax + rsi + 72]
cmovbe rdi, rdx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
sub bl, 15
and ecx, 85
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 72
sbb rax, rdi
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
