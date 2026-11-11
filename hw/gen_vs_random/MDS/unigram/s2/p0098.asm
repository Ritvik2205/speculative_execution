.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
test cl, 21
or cl, dl
and cl, dil
cmovnb rcx, rcx
btr ecx, edi
or dl, -115
and al, 122 # instrumentation
cmovnbe eax, edi
and al, dil
jmp .bb_0.1
.bb_0.1:
and dx, bx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
not di
and cl, -109 # instrumentation
cmovns rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
xor dl, -125
or rdx, 75
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
or ebx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
