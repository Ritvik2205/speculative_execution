.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and al, bl
not dil
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test rbx, rdx
sub cl, 86
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
