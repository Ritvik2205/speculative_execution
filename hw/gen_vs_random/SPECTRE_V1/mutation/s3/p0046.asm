.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rcx + rbx]
cmovnl edx, esi
and al, -23
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
cmp rax, -1365488374
test dl, -7
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdx]
test ax, -30637
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
setle dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
