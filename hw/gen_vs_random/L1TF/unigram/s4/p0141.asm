.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, rcx
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], esi
add cl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
add cl, 19
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
xchg bl, cl
add al, -49 # instrumentation
setnb sil
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 1
cmovl rax, rax
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
lea bx, qword ptr [rax + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
