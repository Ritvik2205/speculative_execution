.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, bl
lea edx, qword ptr [rdx + rax + 92]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
xor bx, 47
inc rcx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, dil
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
add dl, dl
add bl, -47 # instrumentation
setbe bl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
neg ecx
lea rbx, qword ptr [rdx + rdx + 76]
bswap rsi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
