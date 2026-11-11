.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax + rcx + 49]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 53
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
or dil, dl
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
lea rdx, qword ptr [rbx + rdx + 48]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
add dl, al
add al, 27 # instrumentation
setnle al
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
add bl, bl
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and bl, 89
seto dil
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
