.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rdx, 8
setp al
add bl, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
sbb rbx, 13
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
or rdx, rax
and cl, 96
or ebx, eax
jmp .bb_0.1
.bb_0.1:
setbe dl
lea eax, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 43
mov dil, al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
