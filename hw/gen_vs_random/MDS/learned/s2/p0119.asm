.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
bts rsi, rdx
and rdi, 64
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
xor cl, dil
or sil, dil
bt ax, cx
or al, 30
and dil, bl
test al, dl
test ecx, -1843375753
or al, dil
xor cl, 98
and rax, -636362975
or cl, sil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
test rax, 337705873
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
