.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
not cl
cmp sil, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
lea eax, qword ptr [rcx]
lea si, qword ptr [rdx]
sbb cl, bl
mov al, dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 93
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
test di, 52
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
