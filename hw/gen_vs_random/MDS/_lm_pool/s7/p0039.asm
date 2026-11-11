.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
bts dx, 50
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
test sil, bl
or al, -58
test dl, bl
and edi, 23
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xor rbx, 89
or al, sil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
or al, 30
test bl, 65
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
