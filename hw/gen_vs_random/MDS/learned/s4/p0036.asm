.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 75
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
btr bx, cx
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and cl, dil
xor al, dl
or dl, cl
xor si, 80
test al, 66
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or al, -75
xor rax, 459999114
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
