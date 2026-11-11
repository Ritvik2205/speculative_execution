.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -42
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
imul rbx, rax
test ax, si
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
add bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
xor bl, 38
and rcx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 54
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
cmovb ax, dx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
