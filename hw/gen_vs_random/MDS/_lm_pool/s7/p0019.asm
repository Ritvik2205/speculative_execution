.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or al, -24
test dl, bl
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and dil, -62
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test eax, 1729060510
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
or al, dil
and bl, 68
and ax, 13090
and sil, dl
or dl, cl
or ax, -7150
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test al, dl
xor al, cl
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
