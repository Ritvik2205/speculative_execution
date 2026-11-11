.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
or dl, bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
not bl
xor al, dil
btr bx, 188
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and sil, -69
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
xor cl, 83
jmp .bb_0.1
.bb_0.1:
test cl, 54
and ebx, 23
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and cl, -71
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
