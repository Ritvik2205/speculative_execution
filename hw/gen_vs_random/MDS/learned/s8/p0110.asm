.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
not sil
test rdi, 97
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and al, cl
test eax, -409834435
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 63
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and dl, dil
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or cl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
test al, dl
xor ax, -5889
test cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
