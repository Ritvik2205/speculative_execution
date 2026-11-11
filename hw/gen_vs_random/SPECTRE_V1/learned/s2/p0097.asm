.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmp sil, dl
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmp al, sil
test al, 70
and al, -119
cmovnbe di, di
dec dl
lea rdx, qword ptr [rbx]
cmovl bx, ax
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
lea edx, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
