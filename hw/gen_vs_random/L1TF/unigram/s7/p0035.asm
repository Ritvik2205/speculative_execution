.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -79
setnbe cl
and dl, dl
sub edx, eax
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
test rbx, rsi
test esi, eax
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
sbb rdx, 98
cmovo rsi, rdx
cmovno si, bx
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
