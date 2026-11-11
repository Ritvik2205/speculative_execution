.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 73 # instrumentation
mov rax, 54
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
dec sil
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
lea rsi, qword ptr [rdx]
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 33
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -75
sbb bl, 79
lea esi, qword ptr [rcx]
add edi, -91
movsx rax, di
sub bl, -19
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
