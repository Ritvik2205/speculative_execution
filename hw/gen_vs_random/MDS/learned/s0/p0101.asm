.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or dl, -21
and dl, -73
and rbx, 65
or cl, 7
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
or rdx, -48
test edx, -1561252782
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and bl, bl
jmp .bb_0.1
.bb_0.1:
and edx, -44
or al, bl
btr cx, di
or dil, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
