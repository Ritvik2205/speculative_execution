.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 92
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
xor bl, dil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
xor dl, -125
btc rax, 87
or sil, -8
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
btr rdx, 194
or sil, dil
xor cl, -79
and sil, 65
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
bt si, cx
and al, -37
test rbx, 54
and al, -37
cmovb si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
