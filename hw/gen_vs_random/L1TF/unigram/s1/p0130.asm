.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
or rsi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
xor sil, al
mov rax, rsi
add dl, -7 # instrumentation
cwd
add cl, cl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 76
cmovz edx, ecx
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and di, 67
add bl, 111 # instrumentation
cmovs rax, rax
sub cl, -49
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
setz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
