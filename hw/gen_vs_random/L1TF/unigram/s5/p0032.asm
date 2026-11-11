.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 29
add dil, 104 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
lea esi, qword ptr [rbx + rcx + 92]
add al, 66 # instrumentation
cmovnp edi, eax
and bl, 89
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
test rdi, rdx
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
imul rcx
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
xor rsi, 17
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
or bl, -5
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
