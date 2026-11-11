.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, si
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
xor sil, bl
or ax, 127
and rax, -636362975
and rax, 1886208862
xor rax, -843636050
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
xor cx, -18
xor al, 34
or al, -61
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
