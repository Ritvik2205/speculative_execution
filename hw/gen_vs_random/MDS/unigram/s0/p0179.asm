.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 14
cmovz di, cx
or rdi, -11
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
btr rdx, 12
test di, 53
cmovb ebx, edx
test sil, 41
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or cl, bl
and rdi, 26
or rcx, rdi
and dil, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
bt ebx, edx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], cx
cmovs edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
