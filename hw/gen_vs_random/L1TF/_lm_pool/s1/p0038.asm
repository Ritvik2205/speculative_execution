.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -50
lea di, qword ptr [rdi]
inc bl
bts edi, 3
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, -32
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and dl, 32 # instrumentation
cmovnbe edx, ecx
or ax, 11821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
