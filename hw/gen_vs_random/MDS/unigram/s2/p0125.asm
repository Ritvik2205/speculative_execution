.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
or esi, -110
not esi
or dl, 51
cmovns rsi, rdi
and dl, -73
bt edi, 225
and cl, -85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and bl, 68
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 72
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
bts rcx, 90
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
and cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
btr cx, 9
btr rdx, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
