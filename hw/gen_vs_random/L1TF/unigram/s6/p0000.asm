.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
add dl, 126 # instrumentation
setnb sil
add al, -122 # instrumentation
cmovnbe ebx, ebx
imul rcx, rax
add cl, 98 # instrumentation
inc cl
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
adc rdx, 40
xor dx, 88
cmovnp dx, bx
movzx edx, bx
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
or si, 0b1000000000000000 # instrumentation
bsf bx, si
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 51
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
