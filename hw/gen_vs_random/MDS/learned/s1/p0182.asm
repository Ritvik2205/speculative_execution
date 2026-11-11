.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor ax, -12492
or dil, -41
and rax, 498847670
or bl, dl
or dl, bl
or ax, 85
test al, -81
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
test rsi, 88
and rcx, -63
bts rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
test dl, -119
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
