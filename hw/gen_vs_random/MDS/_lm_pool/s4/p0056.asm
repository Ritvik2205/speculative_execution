.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
test dil, -51
and cl, -71
xor bl, -88
bt di, dx
or bl, 13
test bl, -14
not sil
btr ebx, edi
and dl, -73
bts ecx, 3
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
xor rsi, -117
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
