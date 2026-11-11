.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
mov dl, 121
xor al, al
lea eax, qword ptr [rsi + rdi + 84]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 34
setnz cl
sbb bl, -88
xor bl, dil
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
dec cx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and dil, dl
test cl, 33
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
