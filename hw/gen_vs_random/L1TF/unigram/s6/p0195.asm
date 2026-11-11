.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, bl
test ecx, 6
test rax, 404297506
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
mov eax, edi
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
seto dil
jmp .bb_0.1
.bb_0.1:
or rdx, rdi
add al, 64 # instrumentation
sbb al, cl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
add dl, 85 # instrumentation
cmovp bx, bx
and rax, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rax]
sbb rcx, rdx
add dl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
