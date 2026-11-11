.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
setbe dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -77
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
adc rbx, 75
sbb cl, dl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
lea rdi, qword ptr [rbx + rax]
bt rdi, rax
add dl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
