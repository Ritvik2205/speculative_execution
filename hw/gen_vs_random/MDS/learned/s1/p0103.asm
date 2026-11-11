.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 55
test rbx, rdi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
test dil, sil
test dil, -80
and rax, -1931765367
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and dl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and al, bl
xor al, -26
xor al, 9
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
