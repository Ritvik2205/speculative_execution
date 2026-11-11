.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 49
or al, bl
jmp .bb_0.1
.bb_0.1:
or sil, bl
xor dl, 40
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
test rcx, -613256812
and ax, -10351
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
xor dl, -43
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
