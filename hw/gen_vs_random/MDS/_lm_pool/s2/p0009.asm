.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
test al, dil
test dl, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
test sil, bl
or bl, al
xor al, bl
or dl, al
or sil, -49
test al, dl
test al, dil
test rax, 337705873
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
