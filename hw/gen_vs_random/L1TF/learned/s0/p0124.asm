.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
or dl, bl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edi
sub sil, -99
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
cmovnbe rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
