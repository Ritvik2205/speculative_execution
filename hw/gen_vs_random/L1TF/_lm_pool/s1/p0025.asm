.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
sub bl, 15
lea si, qword ptr [rcx + rdx + 36]
sub cl, 86
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
lea di, qword ptr [rsi]
xor bl, dil
add sil, dil
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], 48
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
