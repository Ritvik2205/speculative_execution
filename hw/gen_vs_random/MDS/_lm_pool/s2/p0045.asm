.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
xor dil, -70
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
bts rbx, rax
and al, 35
xor cl, 83
xor dil, -70
or al, al
and al, 84
btr cx, ax
xor cl, 55
test eax, 1729060510
and sil, bl
test sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
