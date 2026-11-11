.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and ax, -12519
xor eax, 2063216578
bt si, ax
xor al, -26
bts rdx, rsi
xor dil, dil
or dil, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor cl, al
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
test al, sil
test eax, 1287331633
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or al, -75
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
