.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], ax
add cl, 72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
inc edx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
add dil, dl
jmp .bb_0.1
.bb_0.1:
setb sil
xor al, dl
or edx, ecx
imul rdi, rdi, 69
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 38
cmp rbx, 43
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
