.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
cmovnl edx, esi
test dl, 113
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rcx + rbx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
and al, 33
and cl, dl
cmp rax, 1189904463
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
setle dl
lea cx, qword ptr [rdx]
test ax, -13885
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
