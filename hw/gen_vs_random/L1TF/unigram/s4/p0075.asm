.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and bl, bl
cmovp ax, di
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add dl, -40 # instrumentation
sbb rdx, 50
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
seto al
movzx dx, al
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 87
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
