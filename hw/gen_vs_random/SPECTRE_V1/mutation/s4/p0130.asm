.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dl
add al, cl
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
cmovle ecx, edi
lea di, qword ptr [rsi + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
inc bl
lea ax, qword ptr [rdx + rax + 36518]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
sub dl, -12
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
test cl, -33
add bl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
