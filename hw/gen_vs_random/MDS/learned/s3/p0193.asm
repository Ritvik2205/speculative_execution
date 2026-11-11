.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
xor cl, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
test al, 22
or al, -75
test ebx, -961564216
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
