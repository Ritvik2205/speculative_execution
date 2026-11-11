.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
setb al
cmp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
movsx eax, cl
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
jmp .bb_0.1
.bb_0.1:
cmp ax, -6940
add dl, 70 # instrumentation
sbb al, -81
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
sub rax, rdi
sbb rax, 1131444263
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
