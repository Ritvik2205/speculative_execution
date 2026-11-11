.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
btr esi, ebx
or al, -58
or al, dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or rax, -1561934807
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
bt si, bx
and sil, -56
or al, -24
test sil, -96
and dil, dl
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
