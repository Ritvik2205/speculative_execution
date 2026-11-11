.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xchg dx, bx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
setnp cl
add al, 31
dec cl
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmovz ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 26
sub rsi, 83
lea esi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
