.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
cmovo dx, ax
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and ebx, 94
lea dx, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea rax, qword ptr [rdi + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, -82
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and dil, sil
btr ax, di
bt ax, cx
xchg dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
