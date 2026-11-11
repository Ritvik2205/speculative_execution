.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
xor sil, -46
or sil, dl
xor bl, -61
or al, -17
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
test bl, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and dil, -39
test dil, 46
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
