.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
or al, -57
and cl, dil
lea di, qword ptr [rcx]
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
lea esi, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
and rcx, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
