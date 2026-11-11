.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 30
or ecx, esi
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
xor al, 9
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
or sil, -49
or rsi, 89
or dl, -21
test rdi, 58
btr eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
