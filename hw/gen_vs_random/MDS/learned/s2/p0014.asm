.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle ecx, ecx
and dil, bl
xor rax, -773894210
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
test al, 66
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
test rdi, 35
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
xor dil, dl
test esi, 1857129931
test eax, 158941032
test eax, -1634766116
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
test cl, dl
test cx, 401
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
