.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
add bl, bl
test rax, 1469613902
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
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
