.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ax, bx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
add dl, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
cmp edi, 46
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add ax, 116
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
mov esi, eax
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
test dx, dx
cmovle rax, rbx
add dil, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
