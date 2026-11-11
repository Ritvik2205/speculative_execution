.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 63
xor sil, dl
and bl, dl
and al, -54
and dil, bl
xor dl, 34
jmp .bb_0.1
.bb_0.1:
or al, -61
xor bl, -61
xor dil, bl
or dil, sil
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rdi, 59
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
