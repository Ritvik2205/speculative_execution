.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl dl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 13
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
nop
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
sub bl, 15
sub cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
add al, -34 # instrumentation
setnp al
add cl, 72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
dec edi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
