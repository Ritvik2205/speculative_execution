.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, 77
not cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 48
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
or dil, dl
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
cmp rsi, rsi
movzx eax, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
setbe al
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
lea ebx, qword ptr [rcx]
mov cl, dl
movsx eax, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
