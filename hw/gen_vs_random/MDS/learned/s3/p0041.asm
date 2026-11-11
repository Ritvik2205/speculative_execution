.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
jmp .bb_0.1
.bb_0.1:
or cl, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and dl, sil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or al, 54
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and edx, -44
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test ecx, -1843375753
xor ax, -12492
xor al, 122
btc dx, 146
or al, -24
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
