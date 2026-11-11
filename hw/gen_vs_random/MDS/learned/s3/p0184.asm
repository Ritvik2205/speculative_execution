.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or al, -58
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
or al, bl
and al, 87
or sil, cl
and dx, 3
test dl, al
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
test dl, 9
xor al, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
