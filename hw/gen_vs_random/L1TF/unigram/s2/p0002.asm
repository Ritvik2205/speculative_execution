.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and bl, dil
jmp .bb_0.1
.bb_0.1:
inc eax
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
add dil, dl
cmp sil, bl
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ecx
mov edx, edi
btr rdi, rsi
add bl, -37 # instrumentation
dec cl
and dl, -86
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
lea eax, qword ptr [rdx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
