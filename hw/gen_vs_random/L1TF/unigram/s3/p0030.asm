.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 49
imul dx, di, 15
adc bl, sil
add dl, -48 # instrumentation
lea ebx, qword ptr [rbx + rdi]
add al, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
btr bx, ax
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or si, -97
mov sil, sil
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmovnle ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
