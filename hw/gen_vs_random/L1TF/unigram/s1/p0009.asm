.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -70
mul rcx
add cl, -36
lea esi, qword ptr [rbx + rax]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 46
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
add si, -5
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 4
lea di, qword ptr [rcx]
setb dil
add bl, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
add dl, 126 # instrumentation
setnb cl
neg rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
