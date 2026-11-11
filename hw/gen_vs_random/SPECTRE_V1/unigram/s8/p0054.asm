.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
xor bl, al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
test ax, bx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
movzx cx, al
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
sub dl, bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 82
lea dx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
