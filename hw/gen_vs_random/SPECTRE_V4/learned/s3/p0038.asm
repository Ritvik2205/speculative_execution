.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
or ecx, 102
and eax, -1948401947
cmp dil, sil
cmp sil, 127
and al, dil
cmp al, 115
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
xor rcx, -111
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
test dl, cl
cmp rdi, 28
cmp rax, -2096157586
add dil, al
and al, 92
add al, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
