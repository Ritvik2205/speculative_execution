.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and al, dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
xor cl, dl
xor cl, 83
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
test bl, bl
test bl, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or cx, -42
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
