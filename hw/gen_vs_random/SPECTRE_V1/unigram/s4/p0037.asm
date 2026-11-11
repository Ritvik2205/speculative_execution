.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 126 # instrumentation
cmovnl bx, dx
xor al, cl
test bl, -8
test cl, -33
sub rbx, -11
add dl, 47
add dl, 38 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
lea si, qword ptr [rsi + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
xor ebx, edi
setbe dil
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
