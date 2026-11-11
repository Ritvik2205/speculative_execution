.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
xor al, bl
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
xor bx, 55
xchg bl, bl
xor cl, 89
add sil, al
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdx + rcx + 89]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
setb sil
lea cx, qword ptr [rdi]
setnz dl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ecx
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
