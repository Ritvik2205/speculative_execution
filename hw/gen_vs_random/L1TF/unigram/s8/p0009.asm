.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
lea rcx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 90
add bl, -45 # instrumentation
cmovs rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
lea rsi, qword ptr [rbx + rcx + 86]
cmp si, 6
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
adc dil, 120
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
