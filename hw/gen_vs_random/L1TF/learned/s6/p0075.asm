.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and al, -68
jmp .bb_0.1
.bb_0.1:
xchg sil, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 20
cmovbe esi, ebx
lea rbx, qword ptr [rdx + rdi]
lea esi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
