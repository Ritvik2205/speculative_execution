.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
test dil, 46
btr dx, cx
test bl, dil
or al, 30
or al, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
not sil
test cl, cl
not bl
xor ax, -1005
or rax, -689609688
or al, -61
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
bt dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
