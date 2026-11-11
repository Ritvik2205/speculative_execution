.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 87
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
lea eax, qword ptr [rsi + rdx + 9]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
xor ax, 30996
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
bts edx, ecx
add bl, -45 # instrumentation
cmovs rax, rax
cmovo edx, esi
adc al, -6
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 72
add cl, 88
or sil, -44
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
