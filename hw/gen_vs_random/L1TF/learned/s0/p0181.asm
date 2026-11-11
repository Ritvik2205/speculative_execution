.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
lea rbx, qword ptr [rcx + rcx]
and rax, 1994547909
and rax, rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test al, -32
xor bl, dil
xor al, sil
cmovbe eax, edi
sbb al, 61
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
mov sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
