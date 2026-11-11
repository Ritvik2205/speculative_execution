.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
or al, -58
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
xor al, 55
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
or al, 37
bt bx, di
or al, al
and dl, dl
bt ax, bx
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
