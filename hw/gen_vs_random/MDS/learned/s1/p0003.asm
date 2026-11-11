.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 100
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
or rcx, -17
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
and al, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
bt si, 23
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rax, 627810357
not dl
or dl, -97
xor bl, dl
test bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
