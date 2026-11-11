.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
test al, 40
adc al, -92
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
xchg dil, dl
lea ax, qword ptr [rcx + rdx + 81]
xchg al, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rcx + rcx + 44]
setns bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
