.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rsi]
sets cl
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
setb bl
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
lea ecx, qword ptr [rdx + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
add dx, 73
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and al, al
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
sub rax, 57846954
test rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
