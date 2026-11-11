.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rbx, -64
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and al, -68
cmovo eax, edx
cmovb di, si
mov ebx, 675401645
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
xor al, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dil
cmovle rdx, rsi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
xor rax, 20
setno sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
