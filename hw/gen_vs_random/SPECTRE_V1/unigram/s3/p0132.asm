.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets al
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 86
movzx cx, dil
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
xor rcx, 8
add cl, 105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
bt ecx, 198
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
