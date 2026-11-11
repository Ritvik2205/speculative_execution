.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
xor bl, -61
xor eax, 2063216578
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
test sil, 17
bt bx, cx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or ax, -23697
xor dl, -19
jmp .bb_0.1
.bb_0.1:
xor dl, dil
xor bx, 63
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
or dl, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
bt cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
