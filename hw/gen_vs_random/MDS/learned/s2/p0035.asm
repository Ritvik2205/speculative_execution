.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle eax, eax
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or al, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
jmp .bb_0.2
.bb_0.2:
and al, bl
test bl, sil
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
