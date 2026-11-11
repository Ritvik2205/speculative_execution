.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmovle ax, cx
cmp al, 27
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 28
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 69
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 42
lea esi, qword ptr [rax + rbx + 32]
add al, 39 # instrumentation
cmovnb bx, si
add dil, 88
not edi
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
