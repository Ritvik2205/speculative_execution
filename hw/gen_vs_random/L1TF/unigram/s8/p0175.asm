.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
add al, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
add cl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
add al, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
sbb cl, -11
or ecx, 34
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xor dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
