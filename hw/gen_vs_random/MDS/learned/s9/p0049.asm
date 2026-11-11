.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test sil, al
and dil, cl
xor dl, -19
bt ax, dx
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test cl, -86
or sil, -49
and dl, -73
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
