.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
cmp eax, 951020724
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
test eax, -2032743474
jmp .bb_0.2
.bb_0.2:
test bl, 84
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
or ax, -10161
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
bt ecx, ebx
test al, dil
lea rsi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
