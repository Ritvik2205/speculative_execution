.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, al
setz dl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
imul rcx, rdx
xchg cx, si
setle sil
movsx ax, bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
cmp bl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
add dl, -15 # instrumentation
cmovl rdx, rax
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
imul cl
or bl, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
