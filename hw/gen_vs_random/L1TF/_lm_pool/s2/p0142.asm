.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 33
test bl, 45
test al, dl
xor cl, 89
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
jmp .bb_0.1
.bb_0.1:
setnle bl
xor dl, cl
bts edi, 85
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
sub dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
