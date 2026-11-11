.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, cl
setp dil
and eax, 1167476476
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 74
add dl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
bt bx, bx
and al, -111
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
setnle al
adc rdi, 36
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
