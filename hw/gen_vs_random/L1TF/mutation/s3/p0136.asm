.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
movsx eax, cl
cmp ebx, ebx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
setb al
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
jmp .bb_0.1
.bb_0.1:
sub rax, rdi
add dl, 70 # instrumentation
sbb al, -81
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
sbb rax, 1183957102
cmp ax, 24210
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
