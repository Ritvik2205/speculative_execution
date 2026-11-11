.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -16
and al, -68
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
seto bl
jmp .bb_0.1
.bb_0.1:
test cl, 53
jmp .bb_0.2
.bb_0.2:
add al, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
jmp .bb_0.4
.bb_0.4:
setno cl
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
