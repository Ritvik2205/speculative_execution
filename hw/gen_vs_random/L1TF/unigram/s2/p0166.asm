.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
add bl, 113 # instrumentation
setbe dl
xor cl, dl
inc bl
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
not dil
neg dil
add dl, -123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 20
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
add al, 48 # instrumentation
cmovnz edi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
