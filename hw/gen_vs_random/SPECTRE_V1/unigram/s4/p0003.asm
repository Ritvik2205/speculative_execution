.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb bl
or sil, sil
xchg dl, dl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 68
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
add cl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
mov dil, al
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
xor dx, 100
cmovnbe cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
