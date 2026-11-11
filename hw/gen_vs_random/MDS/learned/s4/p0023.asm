.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
or bl, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and bl, al
and rbx, 65
or ax, 16560
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
or bl, dl
or cl, dil
and bl, bl
jmp .bb_0.1
.bb_0.1:
or dil, -76
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
bt di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
