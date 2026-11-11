.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, bl
movsx ax, dil
btr rbx, rcx
lea dx, qword ptr [rbx + rcx + 24]
cmovnle rax, rcx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
lea rax, qword ptr [rbx]
or si, 0b1000000000000000 # instrumentation
bsf cx, si
and al, -23
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
add cl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
add cl, -96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
not cx
or rbx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
