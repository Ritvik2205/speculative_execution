.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, bl
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
sub cl, sil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sbb cl, al
add dl, sil
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
cmp bl, -114
or rbx, 54
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
