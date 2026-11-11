.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
bts rcx, rax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
test sil, bl
not al
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
test sil, bl
xor bl, 67
test al, dl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or sil, -49
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or dl, 51
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
