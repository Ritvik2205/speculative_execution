.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
and cl, dl
cmp rax, -1365488374
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and al, 33
test dl, -36
cmovnl edx, esi
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rcx + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
dec al
lea cx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
test ax, -13885
setle dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
