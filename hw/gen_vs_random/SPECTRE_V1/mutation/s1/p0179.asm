.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
cmovnl edx, esi
cmp rax, -1365488374
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rcx + rbx]
test dl, -105
and cl, dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setle dl
lea cx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
dec al
test ax, -30637
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
