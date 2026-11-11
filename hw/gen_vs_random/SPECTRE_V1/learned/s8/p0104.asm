.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 100
add al, -13
xor rsi, 26
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dl, dil
add dl, al
jle .bb_0.2
jmp .exit_0
.bb_0.2:
lea di, qword ptr [rsi + rax + 63231]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
neg rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
setz sil
lea rbx, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
