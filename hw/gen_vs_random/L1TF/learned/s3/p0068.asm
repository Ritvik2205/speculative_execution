.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, si
xchg rax, rbx
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
xor dl, bl
cmovl ecx, ebx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or sil, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
