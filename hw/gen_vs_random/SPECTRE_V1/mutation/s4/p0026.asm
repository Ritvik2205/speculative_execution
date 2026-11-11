.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl edx, esi
and al, -23
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
test dl, 113
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
cmp rax, -1877933118
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rcx + rbx]
and cl, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setle dl
test ax, 636
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
lea cx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
