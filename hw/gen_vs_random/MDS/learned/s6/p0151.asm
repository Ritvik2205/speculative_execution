.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
not dil
btr bx, cx
or dil, -41
xor sil, -46
bt bx, dx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 72
and esi, 62
or al, dl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
