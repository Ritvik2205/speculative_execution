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
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 46
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
movzx rax, dl
setnbe bl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
lea rsi, qword ptr [rcx + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
sbb eax, eax
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
