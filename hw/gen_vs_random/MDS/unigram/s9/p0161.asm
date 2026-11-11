.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edx, 255
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
btr dx, cx
or si, 0b1000000000000000 # instrumentation
bsr cx, si
btc rbx, 102
or dl, -21
test cl, 101
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
bt ax, 76
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and sil, dl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and dl, dl
or dx, 125
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
cmovnz bx, ax
and edx, -44
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
cmovnbe rcx, rax
bt rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
